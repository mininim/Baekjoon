import Foundation

let T = Int(readLine()!)!

for _ in 0..<T{
    var N = ( (Int(readLine()!)!) - 1  ) % 28 + 1
    
    if N > 15 {
        N = 30 - N
    }
    
    var result = ""
    
    if N >= 8{
        N -= 8
        result += "딸기"
    }else{
        result += "V"
    }
    
    if N >= 4{
        N -= 4
        result += "딸기"
    }else{
        result += "V"
    }
    
    if N >= 2{
        N -= 2
        result += "딸기"
    }else{
        result += "V"
    }
    
    if N >= 1{
        N -= 1
        result += "딸기"
    }else{
        result += "V"
    }
    
    print(result)
    
    
}