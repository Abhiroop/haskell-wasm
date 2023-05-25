(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (func (;0;) (type 2)
    nop)
  (func (;1;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 3
        i32.const 13
        i32.add
        local.tee 2
        i32.xor
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 0
          i32.load8_u
          local.set 1
          br 1 (;@2;)
        end
        local.get 0
        i32.const 3
        i32.and
        if  ;; label = @3
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.load8_u
            local.tee 1
            i32.store8
            local.get 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.load
        local.tee 1
        i32.const -1
        i32.xor
        local.get 1
        i32.const 16843009
        i32.sub
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.store
          local.get 0
          i32.load offset=4
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 16843009
          i32.sub
          local.get 1
          i32.const -1
          i32.xor
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 1
      i32.store8
      local.get 1
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 0
        i32.load8_u offset=1
        local.tee 1
        i32.store8 offset=1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.load8_s offset=18
    local.set 0
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;2;) (type 0) (result i32)
    i32.const 104)
  (func (;3;) (type 0) (result i32)
    i32.const 1024)
  (func (;4;) (type 0) (result i32)
    global.get 0)
  (func (;5;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;6;) (type 1) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "foo" (func 1))
  (export "bar" (func 2))
  (export "__indirect_function_table" (table 0))
  (export "_initialize" (func 0))
  (export "__errno_location" (func 3))
  (export "stackSave" (func 4))
  (export "stackRestore" (func 5))
  (export "stackAlloc" (func 6))
  (elem (;0;) (i32.const 1) func 0))
