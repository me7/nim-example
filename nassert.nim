var
    i = 0    # type int
    f = 0.0  # type float
  
doAssert i is int
echo sizeof(i)  # platform dependent, 4 (32-bit) or 8 (64-bit)

doAssert f is float  # contrary to my expectation, this FAILS
echo sizeof(f)  # always 8 (64-bit)

echo type(f)  # apparently the type of "f" is "float64"