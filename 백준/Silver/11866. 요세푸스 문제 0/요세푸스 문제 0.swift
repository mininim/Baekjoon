import Foundation

let input = readLine()!.split(separator: " ")

let N : Int = Int(input[0])!
let K : Int = Int(input[1])!

var seat : [Int] = [Int](1...N)
var result : [Int] = []
var i: Int = -1

while seat.isEmpty == false {
        
    i += K
    i %= seat.count
    result.append(seat.remove(at: i))
    i -= 1
    
}


print("<", separator: "", terminator: "")

print(result.MyLine, separator: "", terminator: "")

print(">", separator: "", terminator: "")

extension Array{
    var MyLine : String {
        return map{"\($0)"}.joined(separator: ", ")
    }

}
