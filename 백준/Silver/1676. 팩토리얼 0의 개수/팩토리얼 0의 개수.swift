import Foundation

var N = Int(readLine()!)!

var result : Int = 0

var i : Int = 5

while N >= 5 {
    
    result += N/5
    
    N /= 5
    
}

print(result)
