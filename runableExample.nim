proc add*(x, y: int): int =
    ## Adds two numbers together.
    runnableExamples:
      doAssert add(5, 5) == 10
      doAssert add(-5, 2) == -3
  
    x + y

echo add(7, 8)