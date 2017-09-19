#! /bin/bash

# Krish Dholakiya and Michael Merola

if [ -z "$1" ];
then
    echo "Usage: ./Grades.sh filename"
    echo "Or"
    echo "Usage: ./GradesAwk.sh filename"
else

    awk -F ' ' '{

        print int(($4+$5+$6)/3) " [" $1 "] " $3 ", " $2 | "sort -k3"

    }' $1

fi
