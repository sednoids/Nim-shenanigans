import std/[strutils, times, strformat, os]

echo "Put the time in hours"
let hours: int = parseInt(readLine(stdin))

echo "Put the time in minutes"
let minutes: int = parseInt(readLine(stdin))

echo "Put the time in seconds"
let seconds: int = parseInt(readLine(stdin))

var totalSeconds: int = hours * 3600 + minutes * 60 + seconds

while (totalSeconds > 0):
    var thecountdown = times.initDuration(seconds = totalSeconds)
    
    stdout.write(&"\r{thecountdown}")
    dec totalSeconds
    os.sleep(1000)
