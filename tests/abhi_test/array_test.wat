(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32)))
  (func (;0;) (type 1)
    call 4)
  (func (;1;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load
    local.set 5
    local.get 5
    return)
  (func (;2;) (type 0) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 3
    i32.load offset=65544
    local.set 4
    i32.const 24
    local.set 5
    local.get 2
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.get 4
    i32.store
    local.get 3
    i64.load offset=65536 align=4
    local.set 14
    local.get 2
    local.get 14
    i64.store offset=16
    i32.const 16
    local.set 7
    local.get 2
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    local.get 9
    call 1
    local.set 10
    local.get 2
    local.get 10
    i32.store offset=12
    local.get 2
    i32.load offset=12
    local.set 11
    i32.const 32
    local.set 12
    local.get 2
    local.get 12
    i32.add
    local.set 13
    local.get 13
    global.set 0
    local.get 11
    return)
  (func (;3;) (type 1)
    block  ;; label = @1
      i32.const 1
      i32.eqz
      br_if 0 (;@1;)
      call 0
    end)
  (func (;4;) (type 1)
    i32.const 65536
    global.set 2
    i32.const 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 1)
  (func (;5;) (type 0) (result i32)
    global.get 0
    global.get 1
    i32.sub)
  (func (;6;) (type 0) (result i32)
    global.get 2)
  (func (;7;) (type 0) (result i32)
    global.get 1)
  (func (;8;) (type 0) (result i32)
    i32.const 65548)
  (func (;9;) (type 0) (result i32)
    global.get 0)
  (func (;10;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;11;) (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;12;) (type 0) (result i32)
    global.get 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "foo" (func 1))
  (export "bar" (func 2))
  (export "__indirect_function_table" (table 0))
  (export "_initialize" (func 3))
  (export "__errno_location" (func 8))
  (export "emscripten_stack_init" (func 4))
  (export "emscripten_stack_get_free" (func 5))
  (export "emscripten_stack_get_base" (func 6))
  (export "emscripten_stack_get_end" (func 7))
  (export "stackSave" (func 9))
  (export "stackRestore" (func 10))
  (export "stackAlloc" (func 11))
  (export "emscripten_stack_get_current" (func 12))
  (elem (;0;) (i32.const 1) func 0)
  (data (;0;) (i32.const 65536) "\03\00\00\00\04\00\00\00\06\00\00\00"))
