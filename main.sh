 #!/bin/bash 
STR=".$1"

if [ "$STR" == "." ]
	then
	STR=".png"
fi

for i in *$STR; do 
	convert "$i" -background white -flatten ${i%.*}.bmp
	potrace -s ${i%.*}.bmp -o ${i%.*}.svg --flat --progress
	rm ${i%.*}.bmp
done