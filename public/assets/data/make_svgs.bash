#! /bin/bash

i=1

while [ $i -lt 346 ]
do
	infile=$(head -n $i list_of_drawings_with_gaps.txt | tail -n 1)
	
	
	python3 ~/data/ndjsonTosvg/ndjsontosvg.py -i "$infile" -s 600 -n 200 -lc white -bc black -o white_on_black/ -ci -rs
	
	python3 ~/data/ndjsonTosvg/ndjsontosvg.py -i "$infile" -s 600 -n 200 -lc black -bc white -o black_on_white/ -ci -rs

	i=$(($i+1))
done
