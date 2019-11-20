import os, strutils

func fib(n: int64): int64 {.inline.} =
  if n <= 1: return n
  return fib(n - 1) + fib(n - 2)

#let n = if paramCount() == 1: paramStr(1).parseInt.int64 else: 38
var n = 38
for i in 0..n:
  echo i, " - ", fib(i)