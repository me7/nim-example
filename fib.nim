import math, strformat, times

proc fib(n: int): int =
    if n <= 2:
        return 1
    else:
        return fib(n - 1) + fib(n - 2)

when isMainModule:
    let x = 47
    let start = epochTime()
    let res = fib(x)
    let elapsed = epochtime() - start
    stderr.writeLine(&"Nim Computed fib({x})={res} in {elapsed:0.2f} seconds")