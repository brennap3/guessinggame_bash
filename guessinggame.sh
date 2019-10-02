#!/usr/bin/env bash
# File: guessinggane.sh
# Peter Brennan
# Date 02/10/2019
# A simple file gussing game 


# guessing evaluation encapsulated in a a function 


function evaluateguess {
  if [[ $response -eq $cntfiles ]]
  then
  let continueguess=0
  result="you guessed correctly, $response, the number of files is $cntfiles"
  else
  let continueguess=1
  result="You entered: $response, not what I was looking for."
  fi
  echo $result

}

cntfiles=$(ls -1 | wc -l)
continueguess=1

# While loop to continue to guess till the right answer is selected

while [[ $continueguess -eq 1 ]]
do
echo "Guess the number of files in current folder"
read response
evaluateguess $response
done

# Farewell messages to signal end of program


echo "End program"
echo "Goodbye"

