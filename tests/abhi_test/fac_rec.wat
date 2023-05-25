(module
  (func $fac_rec
        (export "fac_rec")
        (param $n i32)
        (result i32)
        i32.const 2
        local.get $n
        i32.ge_s
        if (result i32)
           local.get $n
        else
           ;; n - 1
           local.get $n
           i32.const 1
           i32.sub

           call $fac_rec

           local.get $n
           i32.mul
        end
        return
  )
)