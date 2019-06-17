#include <stdio.h>
#include <stdint.h>
#include <stdlib.h> 
#include <string.h> 

/*
*	INSTRUCTIONS
*	
*/

#define MAX_PROG_LEN 255
#define BASE_DATA_ADDR 1
#define BASE_INS_ADDR 0xf

typedef struct prog_line {
	struct prog_line* prev;
	struct prog_line* next;
	char* ins;
	int depth;
} prog_line;

uint16_t bin[MAX_PROG_LEN];

prog_line program;
prog_line* last_line;

// open file containing source code and load into memory
void read_prog(const char* filename) {
	FILE* fd = fopen(filename, "r");
	size_t len = 0;
	char *line = NULL;
	ssize_t br;
	int depth = 0;
	prog_line* prev_line;

	// Init program struct linked list and read first line
	br = getline(&line, &len, fd);
	char* ins = malloc(br);
	strncpy(ins, line, br);
	// replace line feed will null term
	ins[br - 1] = 0;
	program.ins = ins;
	program.depth = depth;
	prev_line = &program;
	depth++;

	prog_line *new_line;
	while ((br = getline(&line, &len, fd)) != -1) {
		// create new line struct on heap
		new_line = malloc(sizeof(prog_line));
		// store line read on heap
		char* ins = malloc(br);
		strncpy(ins, line, br);
		// replace line feed will null term
		ins[br - 1] = 0;
		// init structure and add to linked list
		new_line->prev = prev_line;
		new_line->next = NULL;
		new_line->ins = ins;
		new_line->depth = depth;
		prev_line->next = new_line;
		prev_line = new_line;
		depth++;
	}
	last_line = new_line;
	free(line);
	fclose(fd);	
}

void free_prog_mem() {
	prog_line* pl_cur = last_line;
	while (pl_cur != NULL) {
		free(pl_cur->ins);
		pl_cur = pl_cur->prev;
		free(pl_cur);
	}
}

// Returns a pointer to the requested program section
prog_line* find_section(const char* sec_name) {
	prog_line* pl_cur = &program;
	while (pl_cur != NULL) {
		// make cpy of line
		char line[strlen(pl_cur->ins)];
		strcpy(line, pl_cur->ins);
		char* word = strtok(line, " \t");
		while (word != NULL) {
			if (strcmp(word, "section") == 0) {
				char *type = strtok(NULL, " \t");
				if (strcmp(sec_name, type) == 0) {
					return pl_cur;
				}
			}
			word = strtok(NULL, " ");
		}
		pl_cur = pl_cur->next;
	}
	return NULL;
}

void setup_memory(prog_line* data_sec, prog_line* text_sec) {
	int next_addr = BASE_DATA_ADDR;
	while (1) {
		char line[strlen(data_sec->ins)];
		strcpy(line, data_sec->ins);
		char* numanic = strtok(line, " \t");
		/*
		* if numanic is the keyword section
		* then data section has ended
		*/
		if (numanic != NULL && strcmp(numanic, "section") == 0) {
			break;
		}
		char* size = strtok(NULL, " \t");
		char* value = strtok(NULL, " \t");
		// if no more lines data section has ended
		if (data_sec->next == NULL) {
			break;
		}
		data_sec = data_sec->next;

		if (numanic == NULL || size == NULL || value == NULL) {
			continue;
		}

		if (strcmp(size, "dw") == 0) {
			uint16_t val = atoi(value);
			bin[next_addr] = val;
			next_addr++;
		}

		printf("%s %s %s\n", numanic, size, value);
	}
}

uint16_t get_reg(char *reg) {
	if (strncmp(reg, "r", 1) == 0) {
		int r = atoi((const char*) &reg[1]);
		if (r >= 0 && r < 8) {
			return r;
		}
	}
	return -1;
}

uint16_t gen_add_rrr(char* rA_str, char* rB_str, char* rC_str) {
	uint16_t ins = 0;
	uint16_t rA = get_reg(rA_str);	
	uint16_t rB = get_reg(rB_str);	
	uint16_t rC = get_reg(rC_str);
	ins |= rA << 10;
	ins |= rB << 7;
	ins |= rC;
	return ins;	
}

void parse_ins(prog_line* text_sec) {
	int next_addr = BASE_INS_ADDR;
	while (1) {
		char line[strlen(text_sec->ins)];
		strcpy(line, text_sec->ins);
		printf("line = %s\n", line);
		char* op = strtok(line, " \t");

		if (op == NULL) {
			break;
		}

		printf("op = %s\n", op);
		if (strcmp(op, "add") == 0) {
			char* rA = strtok(NULL, " ,\t");
			char* rB = strtok(NULL, " ,\t");
			char* rC = strtok(NULL, " ,\t");
			bin[next_addr] = gen_add_rrr(rA, rB, rC);
			next_addr++;
		}

		if (text_sec->next == NULL) {
			break;
		}
		text_sec = text_sec->next;
	}
}

void u16_to_ascii_bin(char* dest, uint16_t val) {
	int i = 0;
	dest += 17;
	*dest = 0;
	dest--;
	*dest = '\n';
	for (; i < 16; i++) {
		dest--;
		*dest = (val % 2) ? '1' : '0';
		val = val >> 1;
	}
}

void write_bin() {
	FILE* fd = fopen("prog.bin", "w");
	char ins[18];
	int i = 0; 
	for (; i < 20; i++) {
		u16_to_ascii_bin(ins, bin[i]);
		fwrite(ins, 18, 1, fd);
	}
	fclose(fd);
}

int main(int argc, char** argv) {
	if (argc < 2) {
		printf("Error no input files.\n");
		return 1;
	}
	/* 
	* Memory address zero 
	* is reserved as a sys ctrl reg
	* should be set to zero and left alone
	*/
	bin[0] = 0;
	// read line into memory	
	read_prog((const char *) argv[1]);

	prog_line* pl_cur = &program;
	while (pl_cur != NULL) {
		printf("line %d: %s\n", pl_cur->depth, pl_cur->ins);
		pl_cur = pl_cur->next;
	}

	prog_line* text = find_section(".text");
	prog_line* data = find_section(".data");
	printf("found data and text section\n");

	setup_memory(data->next, text->next);

	parse_ins(text->next);

	char aout[17];
	u16_to_ascii_bin(aout, 5);
	
	printf("ascii bin = %s\n", aout);

	int i = 0;
	for (i = 0; i < 20; i++) {
		printf("%04x\n", bin[i]);
	} 

	write_bin();

	free_prog_mem();
	return 0;
}