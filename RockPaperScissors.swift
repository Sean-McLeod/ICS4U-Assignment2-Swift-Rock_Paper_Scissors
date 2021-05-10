/* This program is the
   Rock Paper Scissors program.

   Sean McLeod
   2021/05/08
*/

let ROCKVALUE:Int = 1
let PAPERVALUE:Int = 2
let SCISSORSVALUE:Int = 3

func gameResult(comChoice: Int, userValue: Int) -> String {
    let result:String

    if comChoice == userValue {
        result = "It's a tie!"
    } else if (comChoice == SCISSORSVALUE && userValue == ROCKVALUE) ||
              (comChoice == ROCKVALUE && userValue == PAPERVALUE) ||
              (comChoice == PAPERVALUE && userValue == SCISSORSVALUE) {
        result = "You Win!"
    } else {
        result = "You Lose!"
    }
    // return result
    return result
}

let high:Int = 3
let low:Int = 1
let userValue:Int
let computerValue:String

print("Play Rock Paper Scissors with a computer")
print("Options: Rock, Paper, Scissors")

// input
print("\nYour choice: ", terminator:"")
let userString = readLine()
let userChoice = userString!.lowercased()

if (userChoice == "rock") || (userChoice == "paper") || (userChoice == "scissors") {
    // declare values to strings to deal with it later
    if userChoice == "rock" {
        userValue = ROCKVALUE
    } else if userChoice == "paper" {
        userValue = PAPERVALUE
    } else {
        userValue = SCISSORSVALUE
    }

    // generate random number
    let comChoice = Int.random(in: low..<high + 1)

    // change comChoice to string for users to understand
    if comChoice == ROCKVALUE {
        computerValue = "Rock"
    } else if comChoice == PAPERVALUE {
        computerValue = "paper"
    } else {
        computerValue = "Scissors"
    }

    // pass & accept parameter
    let result = gameResult(comChoice: comChoice, userValue: userValue)
    // output
    print("Computer's Choice: \(computerValue)")
    print("\n\(result)")
} else {
    print("\n \(userChoice) is not an option")
}
