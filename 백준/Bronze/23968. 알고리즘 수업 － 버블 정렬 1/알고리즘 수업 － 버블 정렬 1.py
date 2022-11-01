import sys

n, k = map(int, sys.stdin.readline().split())
arr = list(map(int, sys.stdin.readline().split()))

cnt = 0 
result = "-1"

for i in range(n-1, 0, -1):
    for j in range(i):
        if arr[j] > arr[j+1]:
            cnt += 1
            arr[j], arr[j + 1] = arr[j + 1], arr[j]
            if cnt == k:
                result = f'{arr[j]} {arr[j+1]}'
                break
      

print(result)