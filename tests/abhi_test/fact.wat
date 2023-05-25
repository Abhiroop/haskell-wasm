(module
  (func (export "fac_loop")
        (param $n i32)
        (result i32)
        (local $i i32)
        (local $fac i32)
        i32.const 2
        local.get $n
        i32.ge_s
        if (result i32)
                  local.get $n
                  return
        else
                  i32.const 1
                  local.set $fac
                  i32.const 2
                  local.set $i
                  loop $myloop

                    ;; fac = fac * i
                    local.get $i
                    local.get $fac
                    i32.mul
                    local.set $fac

                    ;; i++
                    local.get $i
                    i32.const 1
                    i32.add
                    local.set $i

                    ;; i <= n
                    local.get $n
                    local.get $i
                    i32.ge_s
                    br_if $myloop
                  end

                  local.get $fac
                  return
        end
  )
)