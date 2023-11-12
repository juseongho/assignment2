#!/bin/bash

db_file="DB.txt"

if [ -f "$db_file" ]; 
then
 echo "DB.txt 파일이 이미 존재합니다."
 read -p "기존 파일을 덮어쓰시겠습니까? (y/n): " overwrite

 if [ "$overwrite" == "y" ];
 then
  rm "$db_file"
 else
  echo "기존 파일에 추가합니다."
 fi
fi

while true; 
do
 read -p "팀원의 이름을 입력하세요 (종료하려면 'exit' 입력): " name
 
 if [ "$name" == "exit" ]; 
 then
  echo "입력이 종료되었습니다."
  break
 fi
 
 read -p "$name의 생일 또는 전화번호를 입력하세요: " info

 echo "$name: $info" >> "$db_file"

 echo "정보가 DB.txt에 추가되었습니다."
done

echo "스크립트가 종료되었습니다."

