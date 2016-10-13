import Glibc

class CLI {
  class func run(gameMode: RPSMode) {
    let game = RPSGame(mode: gameMode)

    let attendees = 100

    for i in 1...3 {
      print("\(i)...")
      sleep(1)
    }

    for _ in 1...attendees {
      print(game.choice(), terminator: "  ")
    }
  }
}
