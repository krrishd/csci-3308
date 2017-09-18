#! /bin/bash

# Krish Dholakiya and Michael Merola

filename="$1"
numberOfLines=`wc -l < $filename`
numberOfLines=$(expr $numberOfLines + 0)
let currentlinePosition=0
unsortedOutput=""

cat $filename | while read line || [ -n "$line" ] # this ensures it gets every line, including the last, even if no \n at the end
do
  studentID=$(echo $line | cut -d ' ' -f 1)
  firstName=$(echo $line | cut -d ' ' -f 2)
  lastName=$(echo $line | cut -d ' ' -f 3)
  scoreOne=$(echo $line | cut -d ' ' -f 4)
  scoreTwo=$(echo $line | cut -d ' ' -f 5)
  scoreThree=$(echo $line | cut -d ' ' -f 6)

  scoreOne=$(expr $scoreOne + 0)
  scoreTwo=$(expr $scoreTwo + 0)
  scoreThree=$(expr $scoreThree + 0)

  let average=($scoreOne+$scoreTwo+$scoreThree)/3
  unsortedOutput+=`echo "$average [$studentID] $lastName, $firstName\n"`

  if [ "$currentlinePosition" == "$numberOfLines" ]; then
    # have to sort within this while loop (instead of after) since file i/o is async
    # and instructions after the while loop will evaluate before the file i/o is complete
    sortedOutput=$(printf "$unsortedOutput" | sort -n)
    echo "$sortedOutput"
  fi

  let currentlinePosition+=1

done
