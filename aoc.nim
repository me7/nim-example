import httpclient, strformat, htmlparser, xmltree, strutils

proc main = 
  let client = newHttpClient()
  for i in 1..25:
    let inp = client.getContent(fmt"https://adventofcode.com/2017/day/{i}")
    writeFile(fmt"day{i}.html", inp)
    # var outp:seq[string] = @[]
    # for line in inp.splitLines:
    #   if "article>" in line:
    #     outp.add line
    # writeFile("day1.html", outp.join("\n"))
      # let html = loadHtml(outp)
      # for a in html.findAll("a"):
      #     echo a.innerText

when isMainModule:
    main()
    # let s1 = """</article class="day-desc">"""
    # echo s1.startsWith "</a"