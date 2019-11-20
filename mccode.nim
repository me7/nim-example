import posix

const
  prot = PROT_READ or PROT_WRITE or PROT_EXEC

when defined(macosx) or defined(bsd):
  const MAP_ANONYMOUS = 0x1000
else: # Linux
  const MAP_ANONYMOUS = 0x20

type
  IntToInt = proc(num: uint32): uint32 {.nimcall.}

var code = [
  0x48'u8, 0x89, 0xf8,                # mov rax, rdi
  0x48, 0x05, 0x04, 0x00, 0x00, 0x00, # add rax, 4
  0xc3]                               # ret

var mem = mmap(nil, code.len, prot, MAP_PRIVATE or MAP_ANONYMOUS, -1, 0)
copyMem(mem, addr code[0], code.len)

var add4 = cast[IntToInt](mem)
echo add4(3)  # 3 + 4

discard munmap(mem, code.len)