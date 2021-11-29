#!/usr/bin/env bash

echo "[Welcome to Spandana's  Guessit game]"

function ask {
	echo "try to guess the number of files in the present directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "your guess is too low.Give another try!!"
	else
		echo "your guess is too high.Give another try!!"
	fi
	ask
done

echo "Yayy!! Congratulations,your guess is correct, here is the list of files:"
echo "---" && ls -1