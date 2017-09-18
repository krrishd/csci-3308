#! /bin/bash

# Krish Dholakiya and Michael Merola

# 1. Answer = 15371
egrep '[0-9]\r|\n' regex_practice_data.txt | wc -l

# 2. Answer = 53252
egrep '^[^aeiou]' regex_practice_data.txt | wc -l 

# 3. Answer = 1257
egrep '^[a-zA-Z]{12}\r|\n' regex_practice_data.txt | wc -l

# 4. Answer = 770
egrep '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice_data.txt | wc -l

# 5. Answer = 407
egrep '303-[0-9]{3}-[0-9]{4}' regex_practice_data.txt | wc -l

# 6. Answer = 1338
egrep '^[aeiou].*[0-9]\r|\n' regex_practice_data.txt | wc -l

# 7. Answer = 6619
egrep 'geocities.com\r|\n' regex_practice_data.txt | wc -l

# 8. Answer = 
