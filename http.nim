import httpclient
let c = newHttpClient()
writeFile("bn.html", c.getContent("http://194.10.10.99"))
