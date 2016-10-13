import Kitura

class Web {
  class func start(gameMode: RPSMode) {

    let router = Router()

    let game = RPSGame(mode: gameMode)

    router.get("/") { req, resp, next in

      resp.headers.append("Content-Type", value: "text/html; charset: UTF-8")

      resp.send("<!doctype html>")
      resp.send("<html>")
      resp.send("<head><meta charset='utf-8'><head>")
      resp.send("<h1 style='font-size:400px; margin-top: 200px; text-align: center'>\(game.choice())</h1>")
      resp.send("</html>")
      next()

    }

    Kitura.addHTTPServer(onPort: 8000, with: router)
    print("Starting web server on port 8000...")
    Kitura.run()
  }
}
