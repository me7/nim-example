import jester

routes:
    get "/hello/@name":
        resp "hello " & @"name"