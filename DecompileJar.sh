#! /bin/bash

# the full path of fernflower.jar
fernflower=fernflower.jar

#1 Get params count, if none, exit
paramnum=${#}
if((paramnum==0));then
echo no params;
exit; 
fi

#2 Get the file name
p1=$1 
file_name=`basename $p1` 
echo fname=$file_name

#3 Get the absolute path
pdir=`cd -P $(dirname $p1); pwd`
echo pdir=$pdir

fullpath="${pdir}/${file_name}"

#4 Is that a jar or war?
file_len=${#fullpath}
subfix=${fullpath:$[${file_len} - 3]:3}
if [ $subfix != "jar" -a $subfix != "war" ]; then
    echo "not a jar or war!"
    exit;
fi

#6 Unzip the jar package
prefix=${fullpath:0:$[${file_len} - 4]}
unzip $fullpath -d "${prefix}_tmp"

#7 Get the target dir or set a default dir
targetDir=${prefix}
if [ $# == 2 ]; then
    targetDir=$2
fi
mkdir $targetDir

#8 decomplie .class to .java
java -jar $fernflower "${prefix}_tmp" $targetDir

#8 delete tmp files
rm -rf "${prefix}_tmp"
