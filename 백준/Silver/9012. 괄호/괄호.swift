import Foundation

let n : Int = Int(readLine()!)!


for _ in 1...n {
    
    let input = readLine()!
    var count : Int = 0
   
    for i in input {
        
        if i == "(" {
            count += 1
            
        }else if i == ")"{
            count -= 1
            if count < 0 {
                break
            }
        
        }
    }
    
    print(count == 0 ? "YES" : "NO")
  
    
}
