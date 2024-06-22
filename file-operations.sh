#!/bin/bash

echo "########## create file ##########"

>greaterSignFile.txt

#touch
touch touchFile.txt

#hellowrodl
echo "creater file" >> echo_OutputFile.txt

#cat
cat << EOF > catEOFFile
this is the cat eof file
this is the cat eof file
this is the cat eof file
this is the cat eof file
this is the cat eof file
EOF

#empty file
touch touchEmpty.txt

echo >echoEmpty.txt

echo "###########read a file##########"

while IFS= read -r Line
do
        echo "$Line"
done < $1

echo "##### count the lines"
count=0
while IFS='' read -r Line
do
        echo "This is $count line $Line"
        ((count++))
done < $1

