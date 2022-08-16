import Foundation

let N : Int = Int(readLine()!)!
var A : [Int] = readLine()!.split(separator: " ").map {Int($0)!}

let M : Int = Int(readLine()!)!
let B : [Int] = readLine()!.split(separator: " ").map {Int($0)!}

var itIs : Bool = false

A.sort()

for b in B {
    searchAndPrint(A , b)
}


func searchAndPrint(_ A: [Int],_ b: Int) {
    
    if b < A[0] {
        
        print("0")
        return
    }else if b > A[A.count - 1 ]{
        print("0")
        return
    }else {
        var start: Int = 0
        var end : Int = A.count - 1
        var mid : Int = (start + end) / 2
        
        while (end-start >= 0 ){
            if A[mid] == b {
                print("1")
                return
            }else if A[mid] < b {
                start = mid + 1
            }else if A[mid] > b {
                end = mid - 1
            }
            mid = (start + end) / 2
         }
    }
    
    print("0")
    return

    
}