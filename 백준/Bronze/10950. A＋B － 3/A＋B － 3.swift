import Foundation

let input : Int = Int(readLine()!)!

for _ in 1...input {
    
    let num = readLine()!.split(separator: " ").map { Int($0)!}
    
    print(num[0] + num[1])
    
}