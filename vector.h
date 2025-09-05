#pragma once

#include <stdio.h>

// https://github.com/jamesnolanverran/darr/tree/main

typedef struct {
	size_t capacity;
	size_t count;
	char data[];
} Header;

#define INITIAL_CAPACITY 1
#define GROWTH_FACTOR 2

Header *header_init(size_t type_size) {
	printf("header_init(%lu)\n", type_size);
	size_t data_size = type_size * INITIAL_CAPACITY;
	size_t data_offset = offsetof(Header, data);
	Header *header = malloc(data_offset + data_size);
	header->capacity = INITIAL_CAPACITY;
	header->count = 0;
	printf("new header at %p: data at %p\n", header, header->data);
	return header;
}
Header *get_header(void *ptr) {
	return (Header *)((char *)ptr - offsetof(Header,data));
}
size_t vec_capacity(void *ptr) { return get_header(ptr)->capacity; }
size_t vec_count(void *ptr) { return get_header(ptr)->count; }

void *init_vec(void *ptr, size_t type_size) {
	return ptr ? ptr : (header_init(type_size)->data);
}
Header *header_from(void *arr, size_t type_size) {
	return arr ? get_header(arr) : header_init(type_size);
}
void *prepare_push(void *arr, size_t type_size) {
	printf("prepare_push(%p, %lu)\n", arr, type_size);
	Header *header = header_from(arr, type_size);
	printf("header = %p\n", header);
	header->count++;
	printf("header->count++=%lu\n",header->count);
	if (header->count > header->capacity) {
		Header *new_header = realloc(header, offsetof(Header, data));
		header->capacity *= GROWTH_FACTOR;
		printf("header->capacity *= %d = %lu\n", GROWTH_FACTOR, header->capacity);
		printf("new_header = %p\n", new_header);
		return new_header->data;
	} else {
		return header->data;
	}
}

#define vec_push(ptr, val) (\
		ptr = prepare_push(ptr, sizeof(val)),\
		ptr[vec_count(ptr) - 1] = (val),\
		&ptr[vec_count(ptr) - 1]\
		)
