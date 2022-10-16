import sys
input = sys.stdin.readline
sys.setrecursionlimit(10**9)


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


for i in range(n+1):
    graph[i].sort()


visited = [ 0 for _ in range(n+1) ]


# def dfs(v, r, c) : 
#    visited[r] = c + 1
#    print("방문",r)
#    for i in graph[r]:
#        if visited[i] == 0 :
#            dfs(v, i, visited[r])


# dfs(n, r, 0)

# for i in range(1, n+1):
#     print(visited[i])
    

cnt=[0]*(n+1)

def dfs(v,e,r):
    global count 
    visited[r]=1
    count+=1
    cnt[r]=count
    
    for i in graph[r]:
        if visited[i]==0:    
            dfs(v,e,i)

count=0
dfs(n,m,r)

for i in range(1,n+1):
    print(cnt[i])