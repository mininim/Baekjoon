import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    ACM()
}

func ACM(){
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let H = nums[0]
    let W = nums[1]
    let N = nums[2]
    var count = 0
   
    for i in 1...W{
        for j in 1...H {
            let num = i + j * 100
            count += 1
            if count == N {
                print(num)
            }
        }
    }
    
    
}
