#!/usr/bin/env bash
# File: guessinggame.sh

function filecount {
    local count=$((`ls -l | wc -l` -1 ))
    echo "$count"
}

while :
do
    total=$(filecount)
    echo "Guess how many files are in this current directory: "
    read guess

    if [[ $guess -eq $total ]]
    then
        echo "$guess is correct. Good bye."
        break
    elif [[ $guess -gt $total ]]
    then
        echo "$guess is too high, try again"
    elif [[ $guess -lt $total ]]
    then
        echo "$guess is too low, try again"
    fi
done

