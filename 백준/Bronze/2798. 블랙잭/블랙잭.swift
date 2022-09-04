import Foundation


let nums = readLine()!.split(separator: " ").map { Int($0)! }

let N = nums[0]
let M = nums[1]


let nums2 = readLine()!.split(separator: " ").map { Int($0)! }

var result : Int = 0
var sum : Int = 0

for i in 0..<N-2{
    for j in i+1..<N-1{
        for k in j+1..<N{
            sum = nums2[i] + nums2[j] +  nums2[k]
            if sum <= M {
                result = max(result, sum)
            }
        }
    }
    
}



print(result)
