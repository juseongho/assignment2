def bubbleSort_desc(list):
  n = len(list)
  for i in range(n-1):
    for j in range(0, n-i-1):
      if list[j] < list[j+1]:
        list[j], list[j+1] = list[j+1], list[j]

list = [54, 20, 16, 43, 39, 20, 8]
print("원래 리스트 = %s" %list)
bubbleSort_desc(list)
print("Bubble방법으로 내림차순 정렬")
print(list)