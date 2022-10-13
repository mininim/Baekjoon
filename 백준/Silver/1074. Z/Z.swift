import Foundation


let nums = readLine()!.split(separator: " ").map { Int($0)! }

var N : Int = nums[0]
var r : Int = nums[1]
var c : Int = nums[2]

var result : Int = 0

while N != 0 {
    
    N -= 1
    
    if r < Int(pow(Double(2), Double(N))) && c < Int(pow(Double(2), Double(N))) {
        
        result += Int(pow(Double(2), Double(N))) * Int(pow(Double(2), Double(N))) * 0
        
        
    }else if r < Int(pow(Double(2), Double(N))) && c >= Int(pow(Double(2), Double(N))) {
        result += Int(pow(Double(2), Double(N))) * Int(pow(Double(2), Double(N))) * 1
        
        c -= Int(pow(Double(2), Double(N)))
        
    }else if r >= Int(pow(Double(2), Double(N))) && c < Int(pow(Double(2), Double(N))){
        
        result += Int(pow(Double(2), Double(N))) * Int(pow(Double(2), Double(N))) * 2
        r -= Int(pow(Double(2), Double(N)))

    }else {
        
        
        result += Int(pow(Double(2), Double(N))) * Int(pow(Double(2), Double(N))) * 3
        
        c -= Int(pow(Double(2), Double(N)))
        r -= Int(pow(Double(2), Double(N)))
        
    }
 
}

print(result)