 #!/bin/bash 
STR=".$1"
output="output"

if [ "$STR" == "." ]
	then
	STR=".png"
fi

if [ -d "$output" ]; then
  rm -r "$output"
fi
mkdir "$output"

for i in *$STR; do 
	convert "$i" -background white -flatten ${i%.*}.bmp
	potrace -s ${i%.*}.bmp -o $output/${i%.*}.svg --group --progress
	rm ${i%.*}.bmp
done