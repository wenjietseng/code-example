
files=($(ls))
for idx in "${files[@]}"
do
	echo $idx
	gcc $idx -o "$idx.out"
done
