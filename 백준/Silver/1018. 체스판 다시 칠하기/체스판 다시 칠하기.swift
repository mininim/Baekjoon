//
//  main.swift
//  Algorithm
//
//  Created by 이민섭 on 2022/09/02.
//


//1018

typealias Board = Array<Array<Character>>

import Foundation

let nums = readLine()!.split(separator: " ").map { Int($0)! }

let N = nums[0]
let M = nums[1]

var input : Array<Array<Character>> = []

for _ in 0..<N {
    let line = readLine()!.map { $0 }
    input.append(line)
}


func cutboard(x : Int , y : Int ) -> Board{
    
    var board :  Array<Array<Character>> = []
    
    for i in 0..<8{
        
        let buffer = Array(input[x + i][y..<y+8])
        board.append(buffer)
        
    }
    
    return board

}

func count(board : Board) -> Int {
    var result1 = 0
    var result2 = 0
    
    for i in 0..<8{
        for j in 0..<8{
            if (i+j)%2 == 0{
                if board[i][j] == "B" {
                    result1 += 1
                    
                }else{
                    result2 += 1
                }
                
            }else {
                
                if board[i][j] == "W" {
                    result1 += 1
                    
                }else{
                    result2 += 1
                }
                
            }
                
            
        }
    }
    
    return min(result1, result2)
    
    
}

var result = 64

for x in 0..<(N-7){
    for y in 0..<(M-7){
        let board = cutboard(x: x, y: y)
        result = min(result, count(board: board))
    }
}

print(result)
