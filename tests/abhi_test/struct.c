//struct.c
#include <emscripten.h>

struct baz {
  int a;
};

EMSCRIPTEN_KEEPALIVE
int foo(struct baz *f){
  return(f->a);
}

EMSCRIPTEN_KEEPALIVE
int bar() {
  struct baz my_baz;
  my_baz.a = 1;
  int k = foo(&my_baz);
  return(k);
}
