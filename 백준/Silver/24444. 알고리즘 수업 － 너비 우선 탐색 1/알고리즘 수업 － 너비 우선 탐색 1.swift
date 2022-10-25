import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0] , m = input[1] , r = input[2]

var graph : Array<Array<Int>> = Array(repeating: [], count: n+1)
var visitedWhen : Array<Int> = Array(repeating: 0, count: n+1)



for _ in 1...m {
    
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input2[0] , b = input2[1]
    
    graph[a].append(b)
    graph[b].append(a)
    
}

for i in 1...n{
    graph[i].sort()
}
        


var queue : [Int] = [r]
var c = 1
visitedWhen[r] = c
c += 1
var firstindex = 0

while firstindex < queue.count {
    let next = queue[firstindex]
    firstindex += 1
    
    for i in graph[next]{
        
        if visitedWhen[i] > 0 {
            continue
        }
        
        queue.append(i)
        visitedWhen[i] = c
        c += 1
        
    }
    
    
}


for i in 1...n{
    print(visitedWhen[i])
}


//remove 사용 시간 초과
//while !queue.isEmpty {
//    let next = queue.remove(at: 0)
//    if visitedWhen[next] > 0 {
//        continue
//    }
//
//    visitedWhen[next] = c
//    c += 1
//    queue.append(contentsOf: graph[next])
//
//}

//함수 사용 시간 초과
//func bfs( now : Int ) {
//
//    var checker = 0
//    var queue : [Int] = [now]
//
//    while !queue.isEmpty {
//
//        let next = queue.remove(at: 0)
//
//        if visitedWhen[next] == 0 {
//            checker += 1
//            visitedWhen[next] = checker
//            queue.append(contentsOf: graph[next].sorted())
//
//        }
//
//
//    }
//
//
//}
//
//bfs(now: r)
