//
//  main.swift
//  Algorithm
//
//

//1012

import Foundation

let T = Int(readLine()!)!

struct point : Hashable {
    let x : Int
    let y : Int
}


func find() {
    
    var SetsArray: Array<Set<point>> = []
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let M : Int = nums[0]
    let N : Int = nums[1]
    let K : Int = nums[2]
    
    for i in 1...K {
        
         
        let input = readLine()!.split(separator: " ").map{ Int($0)! }
        let p : point = point(x: input[0], y: input[1])
        
        
        if i == 1 { // 첫번째 입력은 고대로 추가
            SetsArray.append(포인트값받아서좌우상하추가한셋반환(input : p, M : M, N: N))
            SetsArray[0].insert(p)
//            print(SetsArray)
            continue
        }
        
        
        var bufferSet : Set<point> = []
        
        var check : Int = 0
        while check < SetsArray.count && !SetsArray.isEmpty {
            
            if SetsArray[check].contains(p) {
                
                bufferSet = bufferSet.union(SetsArray.remove(at: check ))
                check -= 1
                
                
                
            }
            
            check += 1
            
        }
        
        for a in 포인트값받아서좌우상하추가한셋반환(input: p, M: M, N: N) {
            bufferSet.insert(a)
        }
        
        SetsArray.append(bufferSet)
    
        
//        print(SetsArray)
    }
    
    print(SetsArray.count)
    
}


func 포인트값받아서좌우상하추가한셋반환(input: point , M : Int , N: Int ) -> Set<point>{
    var result : Set<point> = []
    
    
    if input.x - 1 >= 0 {
        result.insert(point(x: input.x - 1, y: input.y))
    }
    
    if input.y - 1 >= 0 {
        result.insert(point(x: input.x,  y: input.y - 1))
    }
    
    if input.x + 1 < M {
        result.insert(point(x: input.x + 1, y: input.y))
    }
    
    if input.y + 1 < N {
        result.insert(point(x: input.x , y: input.y + 1))
    }

    return result
}

for _ in 1...T {
    
    find()
    
}

