
import Foundation




let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0] , m = input[1] , r = input[2]

var graph : Array<Array<Int>> = Array(repeating: [], count: n+1)
                                                                
var visited : Array<Bool> = Array(repeating: false, count: n+1)
    
var visitedWhen : Array<Int> = Array(repeating: 0, count: n+1)

var checker : Int = 0


for _ in 1...m {
    
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input2[0] , b = input2[1]
    
    graph[a].append(b)
    graph[b].append(a)
    

}

for i in 1...n{
    graph[i].sort()
}



func dfs( now : Int ) {
    
    visited[now] = true
    checker += 1
    visitedWhen[now] = checker
    
    for i in graph[now] {
    
        if visited[ i ] == false {
        
            dfs(now: i)
        
        }
    }
}


dfs(now: r)

for i in 1...n{
    print(visitedWhen[i])
}
