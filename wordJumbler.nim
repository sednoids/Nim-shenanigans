echo("Enter a word: ")
var word: string = readLine(stdin)

var 
    vowels: array[0..4, char] = ['a', 'e', 'i', 'o', 'u'] 
    startPointer: int = 0
    endPointer: int = word.len - 1
    temp1: char
    temp2: char


while startPointer < endPointer:
    if not vowels.contains(word[startPointer]):
        inc startPointer
        continue
    if not vowels.contains(word[endPointer]):
        dec endPointer
        continue
    temp1 = word[startPointer]
    temp2 = word[endPointer]
    word[startPointer] = temp2
    word[endPointer] = temp1
    inc startPointer
    dec endPointer

echo word
