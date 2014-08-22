#!/bin/bash
for i in $(seq 1 $#);
do
#    echo eval($`echo $i`;
    foo=$foo'\x'$(eval echo $(eval echo $i));
done
echo $foo;
echo -e $foo > /dev/ttyUSB0;
