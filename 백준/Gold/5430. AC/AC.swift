import Foundation

var T : Int = Int(readLine()!)!

for _ in 0..<T {
    
    let p = readLine()!
    let n = Int(readLine()!)!
    let arr : [String] = String(String(readLine()!.dropFirst(1)).dropLast(1)).split(separator: ",").map {String($0)}
    
    
    var head = 0
    var tail = n-1
    var direction : Bool = true
    var error : Bool = false
    
    for command in p {
        if command == "R"{
            
            direction.toggle()
        
        }else{ //command == "D"
            
            if head <= tail {
                if direction { // 정방향인경우
                    head += 1
                }else { // reverse 경우
                    tail -= 1
                }
            }else { // 비어있는 경우
                error = true
                break;
            }
            
        }
        
    }
    
    // 결과 출력
    if error {
        print("error")
    }else if head > tail {
      print("[]")
    }else {
        if direction {
            print("[" + arr[head...tail].joined(separator: ",") + "]")
        }else {
            print("[" + arr[head...tail].reversed().joined(separator: ",") + "]")
        }
    }
    
}
