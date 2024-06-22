#!/bin/bash

var=abcdef
rep='& '
echo ${var/abc/& }
echo "${var/abc/& }"
echo ${var/abc/$rep}
echo "${var/abc/$rep}"


var=abcdef
rep='& '
echo ${var/abc/\& }
echo "${var/abc/\& }"
echo ${var/abc/"& "}
echo ${var/abc/"$rep"}


var=abcdef
rep='\\&xyz'
echo ${var/abc/\\&xyz}
echo ${var/abc/$rep}

var=abcdef
rep='\&xyz'
echo ${var/abc/\&xyz}
echo ${var/abc/$rep}

for file in *\ *; do
  mv "$file" "${file// /_}"
done

for file in *\*; do
  mv "$file" "${file//_/\&}"
done



echo "######### print the length ##########"
param=file_with_space;echo ${#param}

