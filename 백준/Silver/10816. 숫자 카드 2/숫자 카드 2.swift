import Foundation


let N : Int = Int(readLine()!)!
var card = readLine()!.split(separator: " ").map {Int($0)!}

let M : Int = Int(readLine()!)!
var checker = readLine()!.split(separator: " ").map {Int($0)!}


card.sort()
var dic : [Int : Int] = [:]

for i in card {
    if dic.keys.contains(i){
        dic[i]! += 1
        
    }else {
        dic[i] = 1
    }
}

var result : [Int] = []
for j in checker {
    if dic.keys.contains(j){
        result.append(dic[j]!)
    }else{
        result.append(0)
    }
}

print(result.map{"\($0)"}.joined(separator: " "))