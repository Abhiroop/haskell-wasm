(module
 (memory $0 1)
 (data (i32.const 12) "\03\00\00\00\04\00\00\00\06\00\00\00")
 (export "memory" (memory $0))
 (export "foo" (func $foo))
 (export "bar" (func $bar))
 (func $foo (; 0 ;) (param $0 i32) (result i32)
       local.get $0
       i32.load offset=8
 )
 (func $bar (; 1 ;) (result i32)
       i32.const 12
       call $foo
 )
)

(invoke "bar")
