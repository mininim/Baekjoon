import Foundation


let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0] , m = input[1], s = input[2]

var graph : Array<Array<Int>> = Array(repeating: [], count: n+1)

var visited : Array<Bool> = Array(repeating: false, count: n+1)


var DFS_result : String = ""
var BFS_result : String = ""


for _ in 1..<m+1{
    
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input2[0] , b = input2[1]
    
    graph[a].append(b)
    graph[b].append(a)
    
}

for i in 1..<n+1{
    graph[i].sort()
}

func dfs(_ now : Int) {
    visited[now] = true
    DFS_result += "\(now) "

    for i in 0..<graph[now].count {
        let next : Int = graph[now][i]
        
        if visited[next] == false {
            dfs(next)
            
        }
        
    }
    
}


var visited2 : Array<Bool> = Array(repeating: false, count: n+1)
func bfs(_ now : Int){
    
    var tovisit : Array<Int> = [now]
    
    while !tovisit.isEmpty {
        
        let next : Int = tovisit.remove(at: 0)
        
        if visited2[next] == false{
            visited2[next] = true
            BFS_result += "\(next) "
            tovisit.append(contentsOf: graph[next])
            
        }
        
    }

    
}

dfs(s)
print(DFS_result)
bfs(s)
print(BFS_result)