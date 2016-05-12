 #!/bin/bash 
fileType=".$1"
output="output"

if [ "$fileType" == "." ]
	then
	fileType=".png"
fi

if [ -d "$output" ]; then
  rm -r "$output"
fi
mkdir "$output"

for i in *$fileType; do 
	convert "$i" -background white -flatten ${i%.*}.bmp
	potrace -s ${i%.*}.bmp -o $output/${i%.*}.svg --group --progress
	rm ${i%.*}.bmp
done