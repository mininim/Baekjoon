import Foundation

let T = Int(readLine()!)!



var result = Array(repeating: Array<Int>(repeating: 0, count: 31) , count: 31)

for _ in 0..<T{
    
    let input = readLine()!.split(separator: " ").map { Int($0)!}
    
    let n : Int = input[1]
    
    let r : Int = input[0]
    
    
    print(combination(n,r))
    
    result = Array(repeating: Array<Int>(repeating: 0, count: 31) , count: 31)
}


func combination(_ n: Int,_ r: Int) -> Int{
    if n == r || r == 0 {
        return 1
    }
    
    if n == 1{
        return r
    }
    
    if result[n][r] != 0 {
        return result[n][r]
    }
    result[n][r] = combination(n-1, r-1) + combination(n-1, r)
    return result[n][r]
}