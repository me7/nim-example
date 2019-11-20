import unittest
echo "see https://nim-lang.org/docs/manual.html"
suite "sequence":
  test "create using @ --> var s = @[1,2,3]": discard
  test "read using [] --> s[0] = 1":
    check @[1,2,3][0] == 1
  test "add --> s.add(3)":
    var s:seq[int] = @[1,2]
    s.add(3)
    check s == @[1,2,3]
  test "loop --> for v in s:":
    for v in @[1,2,3]:
      if v == 4: assert false
  test "loop with index --> for i,v in s:":
    for i,v in @[1,2,3]:
      if i == 6: assert false

import tables
suite "table":
  test "create --> import tables --> .newTable, .newOrderedTable":
    discard {"a":1,"b":2}.toTable
  test "read --> d[\"a\"]":
    var d = {"a":1,"b":2}.toTable
    check d["a"] == 1
  test "update --> d[a] = 3":
    var d = {"a":1,"b":2}.toTable
    d["a"] = 3
    check d["a"] == 3
  test "loop --> for k,v in d:":
    var d = {"a":1,"b":2}.toTable
    for k,v in d:
      if v == 5: assert false

suite "set":
  test "create --> var s = {1,2,3}": discard
  test "read --> if 2 in s":
    let a = {1,2}
    check 1 in a
  test "union --> {1,2} + {3} = {1,2,3}":
    check {1,2} + {5} == {1,2,5}
  test "intersect --> {1,2} * {2,3} = {2}":
    check {1,2} * {2,3} == {2}