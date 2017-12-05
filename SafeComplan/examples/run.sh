#!/bin/bash

if [ "$1" == '' ]; then
	echo 'type the following command..'
	echo './run.sh tool_z3'
       	exit
fi

cd ~/Documents/MAE6770Project/SafeComplan/src/safe
make
cd ~/Documents/MAE6770Project/SafeComplan/examples
echo "Executable files made.."


mv ~/Documents/MAE6770Project/SafeComplan/src/safe/$1 .
echo "Executable files moved to the current directory.."

./$1
#echo "The input file for Z3 has been generated.."

#time z3 constraints.smt2

exit 0
