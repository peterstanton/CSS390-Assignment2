{ time ./part3.sh 1 ; } 2> tmp.txt
tr "\n" "\t" < tmp.txt > time.txt
