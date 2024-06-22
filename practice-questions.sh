#!/bin/bash
#!/bin/bash

echo -e "detect the interuption\n"

cleanup(){
echo "interuption occured"
exit 1
}

trap cleanup SIGINT
echo "running....."
sleep 5
echo "finished"

echo -e "Create a script that checks for and removes duplicate lines in a text file.\n"

inputFile="catEOFFile"
function removeDuplicate(){
sort "$inputFile" |uniq > outputCatFile.txt

echo "duplicate removed"
}
removeDuplicate

