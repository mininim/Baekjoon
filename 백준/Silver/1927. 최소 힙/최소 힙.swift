
import Foundation

let N = Int(readLine()!)!

var heap : [Int] = Array<Int>(repeating: 0, count: 100001)
var lastIndex : Int = 0

for _ in 0..<N {
    let x = Int(readLine()!)!
    
    if x == 0 {
        print(pop())
    }else {
        push(x)
    }
    
    
}

func push(_ x : Int) {
    
        
    lastIndex += 1
    heap[lastIndex] = x
    
    var child : Int = lastIndex
    var parent : Int = child / 2
    
    while child > 1 && heap[child] < heap[parent] {
        heap.swapAt(parent, child)
        child = parent
        parent = child / 2
        
    }
    
}

func pop() -> Int {
    
    guard lastIndex > 0 else {
        return 0
    }
    
    let result : Int = heap[1]
    heap.swapAt(1, lastIndex)
    lastIndex -= 1
    
    var parent : Int = 1
    var child : Int = 2
    
    if lastIndex > 2 && heap[child+1] < heap[child]  {
        child += 1
    }
    
    while(child <= lastIndex && heap[child] < heap[parent] ){
        heap.swapAt(parent, child)
        
        parent = child
        child = parent*2
        
        if child + 1 <= lastIndex && heap[child+1] < heap[child]  {
            child += 1
        }
        
    }
    
    return result
    
    
}
