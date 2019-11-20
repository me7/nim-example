import calculator
## This is sample nim document --> refer JSDoc from Brad Traversy tutorial


const studentName* = "John Doe" ## This is student name
const grades*:array[3,int|float] = [98,97,79]  ## Array of grade

type todo* = object
  ## Todo type descrition
  id*:int
  text*:string