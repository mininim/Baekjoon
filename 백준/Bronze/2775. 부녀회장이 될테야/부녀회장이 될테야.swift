import Foundation

let T = Int(readLine()!)!

for _ in 1...T {
    
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var room = Array(repeating: Array(repeating: 0, count: n + 1), count: k + 1)
    
    for i in 0...k {
          for j in 0...n {
              if i == 0 {
                  room[i][j] = j + 1

              }else{
                  if j == 0 {
                      room[i][j] = 1
                  }else {
                      room[i][j] = room[i][j - 1] + room[i - 1][j]
                  }
              }
          }
      }
    
    print(room[k][n - 1])

}