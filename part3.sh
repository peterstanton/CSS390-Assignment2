for ((i = 1; i <= 5; i++))
do
	name=$(printf "%04d" "$i")
	dd if=/dev/urandom of=$name bs=1024 count=1024 status=none
	done


readarray -t fileArray < <(find -type f)
numFile=$(expr ${#fileArray[@]})
while [ $i -lt $numFile ]; do
	i=$(($i + 1 ))
	j=$(($i + 1 ))
	while test $j -lt $numFile; do
		if cmp -s "$numFile[$i]" "$numFile[$j]";
		then
  			echo "match: " "$numFile[$i]" "$numFile[$j]";
		fi
		j=$(($j + 1 ));
	done
done
