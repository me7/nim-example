type
  Writer = concept x
    x.writeIt is int
    # x.area is float
  
  nprinter = distinct string
  nsocket = distinct float
  nfile = distinct int

  somthing = object
    age: int


# proc write(s:nprinter):float = 6
# proc write(s:nsocket):int = 5
# proc write(s:Writer):int = 4
# proc area(s:Writer):float = 5.7


