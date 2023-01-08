import Foundation

let T = Int(readLine()!)!

for _ in 1...T{

    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0]
    let y1 = input[1]
    var r1 = input[2]
    
    let x2 = input[3]
    let y2 = input[4]
    var r2 = input[5]
    
    let distance = (x1 - x2)*(x1 - x2) + (y1-y2)*(y1-y2)
    
    
    if distance == 0 {
        if r1 == r2{
//            print("1-1")
            print(-1)
        }else{
//            print("1-2")
            print(0)
        }
    }else{
        
        if r2 > r1 { // swap
            r1 = r1 + r2
            r2 = r1 - r2
            r1 = r1 - r2
        }
        //r1 >= r2
        
        if distance == (r1-r2)*(r1-r2) || distance == (r1+r2)*(r1+r2) {
//            print("2-1")
            print(1)
        }else if distance < (r1 - r2)*(r1 - r2) || distance > (r1 + r2)*(r1 + r2){
//            print("2-2")
            print(0)
        }else{
//            print("2-3")
            print(2)
        }
        
        
    }
    
}
