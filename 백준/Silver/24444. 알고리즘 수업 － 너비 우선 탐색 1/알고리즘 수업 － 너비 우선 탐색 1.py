import sys
from collections import deque

input = sys.stdin.readline

buffer = input().split()
n = int(buffer[0])
m = int(buffer[1])
r = int(buffer[2])

graph= [ [] for _ in range(n+1)]


for i in range(m):
    buffer = input().split()
    a = int(buffer[0])
    b = int(buffer[1])

    graph[a].append(b)
    graph[b].append(a)


for i in range(1, n+1):
    graph[i].sort()


visited = [ 0 ] * (n+1)
queue = deque([r])
c = 1
while queue :
    next = queue.popleft()
    if visited[next]: 
        continue
    
    visited[next] = c
    c += 1
    queue.extend(graph[next]) 

                


for i in range(1,n+1):
    print(visited[i])