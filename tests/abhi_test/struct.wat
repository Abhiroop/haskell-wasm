(module
 (memory $0 1)
 (export "memory" (memory $0))
 (export "foo" (func $foo))
 (export "bar" (func $bar))
 (func $foo (; 0 ;) (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $bar (; 1 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store offset=4
   (i32.const 0)
   (local.tee $1
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const 1)
  )
  (local.set $0
   (call $foo
    (i32.add
     (local.get $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (local.get $0)
 )
)
