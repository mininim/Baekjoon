
import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let a = input[0]
let b = input[1]
let c = input[2]
let n = input[3]

var result = 0

for i in 0...300 {
    
    if a * i < n {
        
        for j in 0...300{
            
            if a * i + b * j  < n {
                
                for k in 0...300{
                    
                    if a * i + b * j + c * k == n{
                        result = 1
                    }else if a * i + b * j + c * k > n{
                        break;
                    }
                }
                
                
            }else if a * i + b * j  == n{
                result = 1
            }else{
                break;
            }
            
        }
        
    }else if a * i == n {
       
        result = 1
        break;
        
    }else{
        break;
    }
    
    
}

print(result)