#!/bin/bash
var=`bc << EOF
scale=4
a=5
b=4
b/a
EOF`
echo $var