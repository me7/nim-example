# check jester bug per https://blog.teddykatz.com/2019/11/05/github-oauth-bypass.html

import jester

routes:
  get "/":
    resp "hello"
