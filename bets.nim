# this is pretty much code i've re-written to this language from python
# this codes also from a friend so nothing original, just wanted to try out what nim could do

from strutils import parseInt
import strformat

const MAX_LINES: int = 3
const MAX_BET: int = 100
const MIN_BET: int = 1

proc deposit(): int =
    while true:
        try:
            echo("How much would you like to deposit? £")
            var amount: int = parseInt(readLine(stdin))
            if amount > 0:
                return amount
            else:
                echo("Amount must be greater than 0.")
        except ValueError:
            echo("Please enter a number")

proc numlines(): int =
    while true:
        try:
            echo(fmt"Enter the number of lines to bet on (1-{MAX_LINES}")
            var lines: int = parseInt(readLine(stdin))

            if 1 <= lines and lines <= MAX_LINES:
                return lines
            else:
                echo("Enter a valid number of lines")
        except ValueError:
            echo("Please enter a number")

proc getbet(): int =
    while true:
        try:
            echo("How much would you like to bet on each line? £")
            var amount: int = parseInt(readLine(stdin))

            if MIN_BET >= 0 and MAX_BET <= 100:
                return amount
            else:
                echo(fmt"Amount must be between {MIN_BET} - {MAX_BET}")
        except ValueError:
            echo("Please enter an integer.")

let balance = deposit()
let lines = numlines()
let bet = getbet()

let total = bet * lines
echo(fmt"You are getting {bet} on {lines}. Total bet is equal to {total}")
echo(fmt"{balance}, {lines}")
