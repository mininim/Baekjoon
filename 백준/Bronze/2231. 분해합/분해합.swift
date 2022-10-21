import Foundation


func 분해합(_ 생성자 : Int) -> Int{
    
    var result : Int = 생성자
    var adder : Int = 생성자
    
    while adder > 0 {
        
        result += adder%10
        
        adder /= 10
        
    }
    
    return result
    
}


let N = Int(readLine()!)!


var result : Int = 0
for i in 1..<N {
    
    if N == 분해합(i) {
        result = i
        break
    }

}

print(result)