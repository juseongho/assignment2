#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ];
then
 mkdir "$folder_name"
fi

cd "$folder_name" || exit

for i in {1..5}; 
do
 echo "This is file $i" > "file$i.txt"
done

ls

for i in {0..4}; 
do
 subfolder_name="file$i"
 file_name="file$i.txt"
 mkdir "$subfolder_name"  
 ln -s "../$file_name" "$subfolder_name/$file_name"
done

find . -type f -o -type d

