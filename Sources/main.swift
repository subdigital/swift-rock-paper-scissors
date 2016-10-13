import Glibc
import Foundation
import Commander

//seed the rng
let seed = NSDate().timeIntervalSince1970
srandom(UInt32(seed))

let main = command(
 Option("mode", "traditional", description: "The game mode to use. Valid choices are traditional (default) and spock"),
 Flag("web", description: "Run web server instead of command line app")
 ){ mode, isWeb in

  guard let gameMode = RPSMode(rawValue: mode) else {
    print("Invalid game mode: \(mode)")
    exit(1)
  }

  if isWeb {
    Web.start(gameMode: gameMode)
  } else {
    CLI.run(gameMode: gameMode)
  }


}

main.run()
