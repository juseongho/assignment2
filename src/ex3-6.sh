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

zip files.zip file*.txt

mkdir $folder_name

unzip files.zip -d $folder_name

ls $folder_name


