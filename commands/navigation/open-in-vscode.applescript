#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open in VS Code
# @raycast.mode silent
# @raycast.packageName Navigation

# Optional parameters:
# @raycast.icon images/vscode.png

# Documentation:
# @raycast.description Open the current Finder directory in Visual Studio Code
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

tell application "Finder"
    if exists window 1 then
        set currentDir to POSIX path of (folder of the front window as alias)
    else
        set currentDir to POSIX path of (path to home folder)
    end if
end tell

do shell script "open -a 'Visual Studio Code' " & quoted form of currentDir
