#!/bin/bash

echo -e "############# While Loop ########## \n"
num=10
while [ $num -gt 0 ]
do
        echo -e "$num \n"
        ((num--))
done

echo -e "############# Do While Loop in single line########## \n"
num1=10
while [ $num1 -gt 0 ];do echo -e "$num1 \n"; ((num1--)); done

echo -e "############# While Loop Read Line by line########## \n"
file=/etc/passwd

while IFS= read -r line
do
echo $line
done < "$file"

echo -e "############# Break statement########## \n"
num=5
while [ $num -gt 2 ]
do
echo -e "Number: $num \n"
((num--))
if [[ $num -eq 2 ]]
then
        echo -e "Statement got breaked on $num \n"
break
fi
done

echo -e "############# Continue statement########## \n"
num=5
while [ $num -gt 0 ]
do
echo -e "Number: $num \n"
((num--))
if [[ $num -eq 2 ]]
then
        echo -e "Statement starts continued on $num \n"
continue
fi
done

echo -e "############# For Loop ############ \n"
for i in 1 2 3 4 5 6 7 8 9 0
do
        echo -e "$i \n"
done

echo -e "############# For Loop over string ############ \n"
for names in hello world my name
do
        echo -e "$names \n"
done

echo -e "############# For Loop for iteration ############ \n"
for number in {1..5}
do
        echo -e "$number \t"
done

echo -e "############# For Loop for iteration with increment ############ \n"
for number in {0..50..5}
do
        echo -e "$number"
done

echo -e "############# For Loop with array ############ \n"
gateway=('internal' 'outbound' 'public' 'waf')
echo "with @ symbol: ${!gateway[@]}"
echo "with * symbol: ${!gateway[*]}"
echo "number of objects: ${#gateway}"
for gateways in "${gateway[*]}" # display all the values of array in once
do
echo "Gateways: $gateways"
done

echo -e "############# For Loop like C programming ############ \n"
for ((num=0; num<5; num++))
do
echo "$num"
done

echo -e "############# For Nested Loop like C programming ############ \n"
for i in {1..3}
do
        for j in {1..3}
        do
                echo "i:$i & j:$j"
        done
done

