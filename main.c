#include "common.h"
#include "chunk.h"
#include "debug.h"

int main(int argc, const char* argv[]) {
    chunk_t chunk;
    chunk_init(&chunk);

    int constant = add_constant(&chunk, 1.2);
    chunk_write(&chunk, OP_CONSTANT, 123);
    chunk_write(&chunk, constant, 123);

    chunk_write(&chunk, OP_RETURN, 123);

    chunk_disassemble(&chunk, "test_chunk");
    chunk_free(&chunk);

    return 0;
}