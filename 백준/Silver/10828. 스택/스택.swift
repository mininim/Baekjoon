import Foundation


var queue: [Int] = []

func push(_ a: Int) {
    queue.append(a)
}

func size() -> Int {
    return queue.count
}

func empty() -> Int {
    if queue.isEmpty {
        return 1
    }else {
        return 0
    }
}

func pop() -> Int {
    if size() == 0 {
        return -1
    }else {
        return queue.removeLast()
    }
}


func top() -> Int {
    if size() == 0 {
        return -1
    }else {
        return queue[size()-1]
    }
}


let n = Int(readLine()!)!

for _ in 1...n {
    let a = readLine()!.split(separator: " ")
    switch String(a[0]) {
    case "push":
        push(Int(a[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "top":
        print(top())
    default:
        break
    }
}