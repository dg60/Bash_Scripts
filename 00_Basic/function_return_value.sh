#!/bin/bash
# Setting a return value to a function


# The scripts need one file as parameter myfile.txt

lines_in_file () {
    cat $1 | wc -l
}

num_lines=$( lines_in_file $1 )
echo The file $1 has $num_lines lines in it.