
import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})

//N 행 M 열
let N = input[0]
let M = input[1]
var maze : Array<Array<Int>> = []

for _ in 1...N{
    maze.append(readLine()!.map({Int(String($0))!}))
}

//print(type(of: maze))

let n_dir : [Int] = [-1, 1, 0 ,0]
let m_dir : [Int] = [0, 0, -1, 1]

//방문 저장
var visited : Array<Array<Bool>> = Array(repeating: Array(repeating: false, count: M), count: N)
visited[0][0] = true

//거리 저장
var dis : Array<Array<Int>> = Array(repeating: Array(repeating: 0, count: M), count: N)
dis[0][0] = 1

var queue : Array<Array<Int>> = [ [ 0, 0] ]

while !queue.isEmpty {
    
    let now = queue.removeFirst()
    let now_n = now[0]
    let now_m = now[1]
    
    //위->아래->왼쪽->오른쪽 방향 칸 확인
    for i in 0...3{
        
        let new_n = now_n + n_dir[i]
        let new_m = now_m + m_dir[i]
        
        
        //이동 가능한 칸 (미로 범위 안 칸 & 이동할 수 있는 칸 & 방문하지 않은 칸  )
        if( (0 <= new_n && new_n < N ) && (0 <= new_m && new_m < M) && (maze[new_n][new_m] == 1) && ( visited[new_n][new_m] == false) ){
            
            visited[new_n][new_m] = true
            dis[new_n][new_m] = dis[now_n][now_m] + 1
            queue.append([new_n,new_m])
            
        }
        
    }
    
    
}

print(dis[N-1][M-1])