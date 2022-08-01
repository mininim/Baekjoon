import Foundation


var s: Set<Int> = []

for i in 1...10000 {
    s.insert(d(i))
}

for j in 1...10000 {
    if !s.contains(j) { print(j) }
}

func d(_ n:Int) -> Int {
    
    var sum = n, now = n
    while now != 0 {
        sum += now%10
        now /= 10
    }
    
    return sum
    
}