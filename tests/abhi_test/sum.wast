(module
 (func (export "sum")
       (param $a i32)
       (param $b i32)
       (result i32)
       local.get $a
       local.get $b
       i32.add
       return))

(invoke "sum" (i32.const 5) (i32.const 2))
