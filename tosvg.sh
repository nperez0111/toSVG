 #!/bin/bash 
fileType=".$1"
outputFolder="output"

if [ "$fileType" == "." ];
	then
	fileType=".png"
fi

if [ -d "$outputFolder" ]; 
	then
  	rm -r "$outputFolder"
fi

mkdir "$outputFolder"

for fileName in *$fileType; 
	do 
		if [ "$fileName" == "*$fileType" ];
			then
			echo "There was an Error searching for the specified file extension:'$fileType'"
			echo "Remember that file extension should be written without the '.' when calling the command"
			echo "Check that you are in the correct directory."
		else
			convert "$fileName" -background white -flatten "${fileName%.*}.bmp"
			potrace -s "${fileName%.*}.bmp" -o "$outputFolder/${fileName%.*}.svg" --group --progress
			rm "${fileName%.*}.bmp"
		fi
done