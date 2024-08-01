#!/bin/bash

# Input string
str="madam"

# Reverse the string
reversed_str=$(echo "$str" | rev)

# Print the reversed string
echo "Reversed string: $reversed_str"

if [[ "$str" == "$reversed_str" ]];
then
        echo "yes"
else
        echo "no"
fi

#########vowels

name="manish"

vowel_count=$(echo "$name"|grep -i -o [aeiou]|wc -l)
echo "count_vowel: $vowel_count"

#length
echo "length of the string ---> ${#name}"

#concatencate 2 string
lastname="sharma"

fullname="$name$lastname"
echo "full name ---> $fullname"

#substring

fullname="  manish kumar sharma  "
printf "%s \n" "$fullname"

printf "%s \n" "${fullname:7}"
printf "%s \n" "${fullname:7:2}"
printf "%s \n" "${fullname:7:-2}"
printf "%s \n" "${fullname: -7}"
printf "%s \n" "${fullname: -7:2}"
printf "%s \n" "${fullname: -7:-2}"

printf "%s \n" "${fullname/manish/chuto}"
printf "%s \n" "${fullname}" |sed 's/ //g'
echo "$(echo ${fullname} | tr '[:lower:]' '[:upper:]')"

echo "$(echo "${fullname}" | tr -d ' ')"
echo "$(echo "${fullname}" | wc -w)"
