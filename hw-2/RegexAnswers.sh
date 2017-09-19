#! /bin/bash

# Krish Dholakiya and Michael Merola

filename="$1"

if [ -z "$1" ]
then
    echo "Usage: ./Grades.sh filename"
    echo "Or"
    echo "Usage: ./GradesAwk.sh filename"
else

    # 1. Answer = 15371
    egrep '[0-9]\r|\n' $filename | wc -l

    # 2. Answer = 53252
    egrep '^[^aeiou]' $filename | wc -l

    # 3. Answer = 1257
    egrep '^[a-zA-Z]{12}\r|\n' $filename | wc -l

    # 4. Answer = 770
    egrep '[0-9]{3}-[0-9]{3}-[0-9]{4}' $filename | wc -l

    # 5. Answer = 407
    egrep '303-[0-9]{3}-[0-9]{4}' $filename | wc -l

    # 6. Answer = 1338
    egrep '^[aeiou].*[0-9]\r|\n' $filename | wc -l

    # 7. Answer = 6619
    egrep 'geocities.com\r|\n' $filename | wc -l

    # 8. Answer = 17705
    egrep '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' $filename | wc -l

fi
