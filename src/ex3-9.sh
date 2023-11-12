#!/bin/bash

db_file="DB.txt"

if [ ! -f "$db_file" ]; 
then
 echo "DB.txt 파일이 존재하지 않습니다. 먼저 정보를 추가하세요."
 exit 1
fi

read -p "검색할 팀원의 이름을 입력하세요: " search_name

search_result=$(grep "^$search_name:" "$db_file")

if [ -n "$search_result" ]; 
then
 echo "검색된 팀원의 정보:"
 echo "$search_result"
else
 echo "검색된 팀원이 없습니다."
fi
