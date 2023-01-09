import Foundation

//Dequeue
//Swift -- Array removeFirst : O(n)   popLast : O(1)  reversed :    O(1) / reverse : O(n)
// --> removeFirst 를 배열 두개로 popLast와 reversed 사용해서 구현
class Dequeue<T> {
    var enQueue: [T]
    var deQueue: [T] = []
    
    var count: Int {
        return enQueue.count + deQueue.count
    }
    
    var isEmpty: Bool {
        return enQueue.isEmpty && deQueue.isEmpty
    }
    
    init(_ queue: [T]) {
        enQueue = queue
    }
    
    func pushLast(_ element: T) {
        enQueue.append(element)
    }
    
    func pushFirst(_ element: T) {
        deQueue.append(element)
    }
    
    func popLast() -> T {
        if enQueue.isEmpty {
            enQueue = deQueue.reversed()
            deQueue.removeAll()
        }
        return enQueue.popLast()!
    }
    
    func popFirst() -> T {
        if deQueue.isEmpty {
            deQueue = enQueue.reversed()
            enQueue.removeAll()
        }
        return deQueue.popLast()!
    }
}

let input = readLine()!.split(separator: " ").map({Int($0)!})

let N = input[0]
let K = input[1]

if N >= K {
    
    print("\(N-K)\n\(1)")
    
}else {
    
    
    var visited : Array<Bool> = Array(repeating: false, count: 100001)
    visited[N] = true
    
    
    var queue  = Dequeue([(N,0)])
    
    var 최단시간 : Int = -1
    var 방법의수 : Int = 0
    
    while !queue.isEmpty{
        
        let (now, time) = queue.popFirst()
        
        visited[now] = true
        
        if now == K {
            
            if 최단시간 == -1 { // 최초방문
                최단시간 = time
                방법의수 = 1
            }else if 최단시간 == time  { // 재방문 최단시간
                방법의수 += 1
            }
            
        }
        
        
        let new_1 = now + 1
        let new_2 = now - 1
        let new_3 = now * 2
        let new_time = time + 1
        
        if new_1 < 100001 && !visited[new_1]{
            queue.pushLast(( new_1, new_time ))
        }
        
        if new_2 >= 0 && !visited[new_2]{
            queue.pushLast(( new_2, new_time ))
            
        }
        
        if new_3 < 100001 && !visited[new_3]{
            queue.pushLast(( new_3, new_time ))
        }
        
    
    
    }
    
    print("\(최단시간)\n\(방법의수)")
    
}