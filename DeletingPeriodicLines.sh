#!/bin/bash
x=$(wc -l < ./sed.dat) #takes the number of total lines from the file
n=12 		       #number of lines we are skipping
l=11		       #skips the first 9 lines of data which are parameters and the first radio	
i=1		       #just a counter
while [ $l -le $x ]    #while we are in a line inside the document
do
        #echo $l		#prints number of actual line
	sed -i "${l}s/.*//" sed.dat #deletes especific line and replacing it with blank line
	l=$((11+(n+2)*i))	#what next line will be
        i=$((i+1))              #counts
done
sed -i '/^$/d' sed.dat #eliminates of all the blank lines in file
