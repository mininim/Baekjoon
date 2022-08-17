import Foundation

struct Queue {
    
    var queue : [Int] = []
    var index : Int = 0
    
    var count : Int {
        queue.count - index
    }
    
    mutating func enqueue(_ element: Int){
        queue.append(element)
    }
    
    mutating func dequeue() -> Int {
        defer {
            index += 1
        }
        return queue[index]
    }
        
}



let N : Int = Int(readLine()!)!

var deck = Queue()
deck.queue = [Int](1...N)

while deck.count != 1 {
    deck.dequeue()
    deck.enqueue(deck.dequeue())
}

print(deck.dequeue())