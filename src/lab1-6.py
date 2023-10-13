def insertionSort_desc(list):
  for i in range(1, len(list)):
    key = list[i]
    j = i-1
    while j >= 0 and key > list[j]:
      list[j+1] = list[j]
      j -= 1
    list[j+1] = key

list = [45, 29, 31, 16, 63, 29, 58]
print("원래 리스트 = %s" %list)
insertionSort_desc(list)
print("Insertaion방법으로 내림차순 정렬")
print("github 수정해보기")
print(list)
