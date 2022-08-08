import Foundation

let input : [Int] = readLine()!.split(separator: " ").map { Int($0)!}



if input[1] == 0 {
    print("1")
}else{
    
    var result = 1
    for i in 0..<input[1]{
        result *= input[0]-i
    }
    
    for i in 1...input[1]{
        result /= i
    }
    print(result)
            
}