#!/bin/bash

if [ "$2" = "" ]; then
 echo use prefix filename
 exit
fi

echo "[$2] -> [$1_$2]"
mv $2 $1_$2
