#include <string.h>
#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
char foo(char *str)
{
	char c[3];
	
	strcpy(c, str);
	return (c[5]); //'h' ascii 104
}

EMSCRIPTEN_KEEPALIVE
char bar()
{
	char char_array[] = "Look here";
   	char x = foo(char_array);	
   	return x;
}
