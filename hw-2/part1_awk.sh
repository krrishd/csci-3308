#! /bin/bash

# Krish Dholakiya and Michael Merola

awk -F ' ' '{

    print int(($4+$5+$6)/3) " [" $1 "] " $3 ", " $2 | "sort -k3"

}' $1
