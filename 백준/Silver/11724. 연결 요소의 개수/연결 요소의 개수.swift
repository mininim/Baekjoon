import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0] , m = input[1]

var graph : Array<Array<Int>> = Array(repeating: [], count: n+1)

var visited : Array<Bool> = Array(repeating: false, count: n+1)

var checker : Int = 0

for _ in 1..<m+1 {

    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input2[0] , b = input2[1]

    graph[a].append(b)
    graph[b].append(a)

}

//재귀
func dfs(_ now : Int) {

visited[now] = true

    for i in 0..<graph[now].count {
        
        let next = graph[now][i]
        
        if visited[ next ] == false {

            dfs(next)

        }
    }
}

for i in 1..<n+1 {
    
    if !visited[i]{
        
        if graph[i].isEmpty{
            checker += 1
            visited[i] = true
        }else{
            dfs(i)
            checker += 1

        }
        
    }
    
}


print(checker)