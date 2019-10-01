#!/usr/bin/env bash
# File: guessinggane.sh

cntfiles=$(ls -1 | wc -l)
continueguess=1

while [[ $continueguess -eq 1 ]]
do
echo "Guess the number of files in current folder"
read response

if [[ $response -eq $cntfiles ]]
then
  let continueguess=0
  result="you guessed correctly, $response, the number of files is $cntfiles"
else
  let continueguess=1
  result="You entered: $response, not what I was looking for."
fi
echo $result
done
echo "End program"

