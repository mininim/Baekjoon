import Foundation


let n : Int = Int(readLine()!)!
var inputs : [Int] = []


for _ in 1...n{
    
    inputs.append(Int(readLine()!)!)
    
}

inputs.sort()

for i in inputs{
    print(i)
}
