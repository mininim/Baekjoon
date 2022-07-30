import Foundation

let n = Int(readLine()!)!

var MyDictionary: [String] = []



for _ in 1...n {
    
    MyDictionary.append(readLine()!)
    
    
}
MyDictionary =
 Array( Set(MyDictionary) ).sorted(by: { $0 < $1 }).sorted(by: { $0.count < $1.count })


for i in MyDictionary{

  print(i)

}