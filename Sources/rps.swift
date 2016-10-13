import Glibc

struct rps {
    var text = "Hello, World!"
}

enum RPSMode : String {
  case traditional
  case spock

  var choices: [String] {
    switch self {
    case .traditional:
      return [
        "✊🏻",
        "✋🏻",
        "✌🏻"
      ]

    case .spock:
      return RPSMode.traditional.choices +  [
        "🖖🏻",
        "🐍"
      ]
    }
  }
}

class RPSGame {
  let mode: RPSMode

  init(mode: RPSMode) {
    self.mode = mode
  }

  func choice() -> String {
    let choices = mode.choices
    return choices[random() % choices.count]
  }
}
