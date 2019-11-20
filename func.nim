import bitops
import strutils

# bit operation
proc bit_op*(i:int):auto =
    var x = 0x00
    echo toBin(x,8)
    x.setBit(4)
    echo toBin(x,8)

bit_op(9)
