#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "vector.h"


int main() {
	int *foo = NULL;
	float *bar = NULL;
	
	printf("vec_push\n");
	int *val1 = vec_push(foo, 7);
	int *val2 = vec_push(foo, 3);
	printf("pushed %d %d\n", *val1, *val2);
	printf("%d %d\n", foo[0], foo[1]);
}
