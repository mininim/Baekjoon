import Foundation

var result = ""
var stack : Array<String> = ["$"]

var instackkey : [String : Int] = ["$": 0,  "(" : 0, ")" : 3, "+" : 1, "-" : 1, "*" : 2 , "/" : 2 ]
var incomingkey : [String : Int] = ["(" : 4, ")" : 3, "+" : 1, "-" : 1, "*" : 2 , "/" : 2 ]

var checker = 1

for i in readLine()! {
    
    let a = String(i)
    switch a
    {
    case ")":
        
        for j in stack.reversed(){
            if j == "("{
                stack.popLast()
                break
            }else{
                result += j
                stack.popLast()
            }
            
        }
        
//        print("\(checker)-- case 1 -- \(result) -- \(stack)")
//        checker += 1
        
        
    case "(", "+", "-", "*", "/":
        
        if  instackkey[stack.last!]! >= incomingkey[a]!  {
            
            var temp = ""
            for j in stack.reversed(){
                if incomingkey[a]! > instackkey[j]!{
                    
                    break
                }else{
                    stack.popLast()
                    temp += j
                    
                }
                
            }
            
            result += temp
            stack.append(a)
            
            
//            print("\(checker)-- case 2 -- \(result) -- \(stack)")
//            checker += 1
            
            
        }else{
            stack.append(a)
            
//            print("\(checker)-- case 3 -- \(result) -- \(stack)")
//            checker += 1
        }
        
            
    default:
        result += a
        
//        print("\(checker)-- case 4 -- \(result) -- \(stack)")
//        checker += 1

        
    }
    
    
}

//stack에 남아있는 operator 정리
stack.removeFirst()
for i in stack.reversed(){
    result += i
}


print(result)
