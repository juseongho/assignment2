#!/bin/bash
echo 프로그램을 시작합니다.

list_files() {
 echo 함수 안으로 들어 왔음
 if [ "$1" == "-l" ]; then
   ls -l
 else
   ls
 fi
}

list_files "$@"
echo 프로그램을 종료합니다.
