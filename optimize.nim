var x = 0
for i in 1 .. 100_000_000:
  inc x # increase x, this is a comment btw

echo "Hello World ", x

# try time ./optimize after nim c optimize.nim
# try again after nim c -d:release optimize.nim, see the different?