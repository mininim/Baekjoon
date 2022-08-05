import Foundation

let n : Int =  Int(readLine()! )!


for _ in 1...n {
    
    let input = readLine()!.split(separator: " ")
    let R = Int( input[0] )!
    let S = Array<Character>(input[1])
    
    var result : String = ""
    for ss in S {
        
        for _ in 1...R {
            result += String(ss)
        }
        
        
    }
    print(result)
    
}