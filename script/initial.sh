#!/bin/bash

dir="/var/log/apache2"
result="/var/log/apache2/list"
rm -rf $result
for file in $(ls $dir)
do
    [ -f $file ] && echo "$file is File" >> $result
    [ -d $file ] && echo "$file is Directory" 
done

cat $result | mailx -s "Directory List" devopsnotification@devops.com
