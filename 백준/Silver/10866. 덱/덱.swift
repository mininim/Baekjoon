import Foundation

var deque: [Int] = []

func push_front(_ a: Int) {
    deque.insert(a, at: 0)
}

func push_back(_ a: Int) {
    deque.append(a)
}

func size() -> Int {
    return deque.count
}

func empty() -> Int {
    if deque.isEmpty {
        return 1
    }else {
        return 0
    }
}

func pop_front() -> Int {
    if size() == 0 {
        return -1
    }else {
        return deque.removeFirst()
    }
}

func pop_back() -> Int {
    if size() == 0 {
        return -1
    }else {
        return deque.removeLast()
    }
}


func front() -> Int {
    if size() == 0 {
        return -1
    }else {
        return deque[0]
    }
}


func back() -> Int {
    if size() == 0 {
        return -1
    }else {
        return deque[size()-1]
    }
}


let n = Int(readLine()!)!

for _ in 1...n {
    let a = readLine()!.split(separator: " ")
    switch String(a[0]) {
    case "push_front":
        push_front(Int(a[1])!)
    case "push_back":
        push_back(Int(a[1])!)
    case "pop_front":
        print(pop_front())
    case "pop_back":
        print(pop_back())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        break
    }
}