#[
let array = @[[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for i, v in array.pairs:
  echo(i, v)
]#
import std/strformat

func outcome(usr, cmp: string): string =
  if usr == "rock" and cmp == "scissors" or usr == "paper" and cmp == "rock" or usr == "scissors" and cmp == "rock":
    return fmt"You win! {usr} beats {cmp}."
  elif usr == "rock" and cmp == "paper" or usr == "paper" and cmp == "scissors" or usr == "scissors" and cmp == "rock":
    return fmt"You lose... {cmp} beats {usr}"
  else:
    return "It's a tie!"

import random


while true:
  randomize()
  let options: array[0..2, string] = ["rock", "paper", "scissors"]
  let comptoptn: string = sample(options)

  echo("Please enter rock, paper or scissors")
  var usroptn: string = readLine(stdin)

  if not options.contains(usroptn):
    echo("You did not enter rock, paper or scissors")
  else:
    echo(&"User: {usroptn}\nComputer: {comptoptn}")
    echo(outcome(usroptn, comptoptn))

    echo("Do you wish to play again (y/n)")
    var choice: string = readLine(stdin)

    if choice != "y":
      break