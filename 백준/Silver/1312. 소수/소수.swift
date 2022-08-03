import Foundation

// 1312

let input = readLine()!.split(separator: " ").map{Int($0)!}
    
var a = input[0]
var b = input[1]
var c = input[2]


var result : Double = 0.0

for _ in 0..<c {
    a %= b
    a *= 10
    result = Double(a) / Double(b)
}

print("\(Int(result))")