#ifndef CLOX_COMPILER_H
#define CLOX_COMPILER_H

#include <stdlib.h>

#include "chunk.h"

bool compile(const char* source, chunk_t* chunk);

#endif