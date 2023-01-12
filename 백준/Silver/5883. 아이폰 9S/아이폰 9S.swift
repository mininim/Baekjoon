import Foundation

let n = Int(readLine()!)!
var stack : [Int] = []
var index : [Int] = []

for _ in 1...n{
    
    let a = Int(readLine()!)!
    stack.append(a)
    
    if !index.contains(a){
        index.append(a)
    }
    
}

var result = 1
for i in index{
    var count = 1
    var pre = -1
    for j in stack{
        
        if i == j {
            continue
        }else if  pre != j   {
            count = 1
        }else{
            count += 1
            result =  result < count ? count : result
        }
        pre = j
        
    }
}

print(result)
