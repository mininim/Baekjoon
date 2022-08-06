import Foundation


let n : Int = Int( readLine()! )!

var count : Int = 0
var sum : Int = 0

for _ in 1...n {
    
    count = 0
    sum = 0
    
    let input =  Array( readLine()! )
    
    for i in input {
        
        if i == "O" {
            count += 1
            sum += count
        }else{
            count = 0
        }
        
    }
    print(sum)
    
    
}