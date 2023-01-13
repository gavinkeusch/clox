#ifndef CLOX_DEBUG_H
#define CLOX_DEBUG_H

#include "chunk.h"

void chunk_disassemble(chunk_t* chunk, const char* name);
int disassemble_instruction(chunk_t* chunk, int offset);

#endif
