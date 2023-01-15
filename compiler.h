#ifndef CLOX_COMPILER_H
#define CLOX_COMPILER_H

#include <stdlib.h>

#include "object.h"
#include "vm.h"

bool compile(const char* source, chunk_t* chunk);

#endif