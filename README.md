# CSS390-Assignment2

## Authors

* **Peter Stanton** - *Initial work*


This is the second scripting assignment at UWB for Autumn 2017.

## Getting Started

Retrieve the Music tarball from the instructor's website. Unpack. Place part1.sh and ass2-part1.awk in Music.
Invoke part1.sh from the command line.
If you encounter an error, please copy-paste the command in part1.sh to the command-line.
Output is to standard output. Please use as you wish.

Part 1 is a bash command that finds all .ogg files, cuts out the artist and album names, sorts duplicates,
then uses sed to replace slash delimiters with spaces, and pipes it into an awk script.

That awk script sticks everything into associative arrays for artist and albums which key. It spits out
boilerplate HTML, then loops through the artist array. In that array, it grabs the number of associated albums
from the album array, and loops through that printing out the artist albums in an inner loop. It then finishes
with ender boilerplate.

Unpack part2.sh, invoke3.sh, and part3.sh to an empty folder for ease of use. Edit part2.sh and part3.sh 
to select the number of files you wish to generate. Run part 2 by invoking part2.sh from the command line.

To test performance, invoke invoke3.sh to time part3.sh. Output of the timing will appear as tab separated output
in a time.txt.


The way part2 and part3 both work is by looping, using urandom in /dev to generate as many random files of whatever size
you want. 

It then inserts all local files into an array, counts the size of the array for usage. Then it loops from 0 
to the size of the array, using i and j (i+1) as variables. It compares the files at i and j for matches using a 
pairwise algorithm to avoid repeat comparisons. It announces any matches found using echo. j iterates twice, at 
beginning and end to keep it one ahead of i.


```
Bugs
```

Part 3 is incomplete. invoke3.sh should contain a loop that runs part3.sh repeatedly, and appends test data to time.txt
so perfomance can be plotted, but I ran out of time. Duplication code is not implemented yet, but should be a for loop
which randomly based on random selection of a value 1-20, copies the current file, and deletes the next one to seed the
file pool with duplicates. use bash cp utility.

## Built With

* Gedit 
* Shell
* Ubuntu

## Sources

Fellow student Mark Belyak, who specifically helped me construct the file array for part 2, some debugging, and the random file generation portions.
Various other Scripting students I've chatted with who helped with miscellaneous debugging.
https://stackoverflow.com/questions/1617724/how-to-replace-newlines-with-tab-characters
https://stackoverflow.com/questions/14637284/writing-a-file-in-bash-script
https://stackoverflow.com/questions/6363328/replacing-with-tab-using-sed

The office hours of our amazing Scripting professor, Bernstein, who patiently walks us through everything.
