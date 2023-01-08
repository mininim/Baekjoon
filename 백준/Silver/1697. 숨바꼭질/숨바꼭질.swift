import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})

let N = input[0]
let K = input[1]



if N >= K {
    
    print(N-K)
    
}else {
    
    
    var visited : Array<Bool> = Array(repeating: false, count: 100001)
    visited[N] = true
    
    var time : Array<Int> = Array(repeating: 100001, count: 100001)
    time[N] = 0
    
    var queue : Array<Int> = [N]
    
    while !queue.isEmpty{
        
        let now = queue.removeFirst()
        
        
        let new_1 = now + 1
        let new_2 = now - 1
        let new_3 = now * 2
        
        if new_1 < 100001 && !visited[new_1]{
            queue.append(new_1)
            visited[new_1] = true
            time[new_1] = time[now]+1
        }
        
        if new_2 >= 0 && !visited[new_2]{
            queue.append(new_2)
            visited[new_2] = true
            time[new_2] = time[now]+1
        }
        
        if new_3 < 100001 && !visited[new_3]{
            queue.append(new_3)
            visited[new_3] = true
            time[new_3] = time[now]+1
        }
        
        if visited[K] {
            print(time[K])
            break
        }
        
        
        
        
    }
    
}