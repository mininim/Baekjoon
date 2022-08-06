import Foundation

let n : Int = Int(readLine()!)!

let input = readLine()!.map { String($0) }


var result: Int = 0

for i in input {
    
    result += Int(i)!

}

print(result)