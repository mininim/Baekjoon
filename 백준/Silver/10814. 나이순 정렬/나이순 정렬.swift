import Foundation


let n : Int = Int(readLine()!)!

var mem : [(age : Int, name : String)] = []


for _ in 1...n {

    let person = readLine()!.split(separator: " ")
    
    mem.append(  ( Int(person[0])!  , String(person[1])  ))
}

mem.sort { a, b in
    a.age < b.age
}

for i in mem {
    print("\(i.age) \(i.name)")
}