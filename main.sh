for i in *.png; do convert "$i" -background white -flatten ${i%.*}.bmp; done
for i in *.bmp; do potrace -s "$i" -o ${i%.*}.svg --flat --progress; done