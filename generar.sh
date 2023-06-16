
#!/bin/bash


for ((i=1; i<=4; i++))	
do 
	NOMBRE=$(awk 'BEGIN { FS = ","} { print $1 | "sort" }' dict.csv  | tail -$i | head -1)
	ARCHIVO="$NOMBRE.jpg"

	curl https://source.unsplash.com/random/900%C3%97700/?person -L -o $ARCHIVO
	sleep 5 
done
