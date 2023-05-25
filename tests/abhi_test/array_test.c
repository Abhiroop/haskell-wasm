// array_test.c
#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
int foo(int *arr){
        return(arr[0]);
}

EMSCRIPTEN_KEEPALIVE
int bar() {
	int arr[3] = {3,4,6};
	int k = foo(arr);
	return(k);
}
