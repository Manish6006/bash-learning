#!/bin/bash

#####Reverse an a array
declare -a arr=(1 2 3 4 5 6 7)

printf "%s\n" "${arr[@]}"

for item in ${arr[@]}
do
        printf "%s " "$item"
done

length=${#arr[@]}
printf "%s\n" "the lenght is $length"


######reverse
for ((i=$length-1; i>=0; i--))
do
        revarr+=${arr[$i]}
done

printf "%s\n" "${revarr[@]}"


######find max element in an array
max_element=${arr[0]}

for item in "${arr[@]}"
do
        if [[ $item -gt $max_element ]]
        then
                max_element=$item
        fi
done
printf "%s \n" "the maximum element is--> $max_element"

######sum
sum=0
for item in "${arr[@]}"
do
        sum=$((sum + item))
done

printf "%s \n" "the sum of all elements is --> $sum"

####check if elemment is found

echo -e "enter the element:\n"
read element

flag=1
for item in ${arr[@]}
do
        if [[ $item == $element ]]
        then
                flag=0
        fi
done

if [ $flag == 0 ];
then
        echo -e "element is found: $element \n"
else
        echo -e "element is not found: $element \n"
fi

####remove duplicate from an array

newarr=(9 6 8 1 2 3 4 56 9 4 3 2 1)
printf "%s \n" "${newarr[@]}"

afterarr=($( printf "%s\n" "${newarr[@]}" |sort| uniq))
printf "%s\n" "${afterarr[@]}"


# Original array
arr=(3 5 1 8 4 2 3 1 8)

# Create an associative array to track unique elements
declare -A unique

# Remove duplicates
for i in "${arr[@]}"
do
    unique["$i"]=1
done

# Print the array without duplicates
echo "Array without duplicates: ${!unique[@]}"
