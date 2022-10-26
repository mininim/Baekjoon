import Foundation

// acase - + or - from 100
// bcase - target channel number
// ccase - 0부터 1000000 채널 중 이동가능 채널로 이동후 + - 하는 경우

var N : Int = Int(readLine()!)!

let a : Int = abs(N - 100)
let b : Int = String(N).count

var M : Int = Int(readLine()!)!

//고장난 버튼이 없는경우
//compare acase & b case 
if M == 0 {
    print(min(a, b))
    exit(0)
}

let brokenkey : [Int] = readLine()!.split(separator: " ").map{ Int($0)!}




var c : Int = 0

for channel in 0...1000000 {
    
    var movablechannel : Int = channel
    var length : Int = 0
    
    // channel 0 인경우
    if movablechannel == 0 {
        if brokenkey.contains(0) {
            // 0으로 이동 불가능한 경우
            // c c case에 최대값으로 초기화 해둠
            c = 1000001
            continue
        }else {
            // 0 으로 이동가능한 경우
            // c case에 1+ N 초기값으로 둠
            c = 1 + N
            continue
        }
    
    }
    
    // channel 이 버튼으로 이동가능한 채널인지 확인
    while movablechannel > 0 {
        if brokenkey.contains(movablechannel%10){
            movablechannel = -1
            break
        }
        movablechannel = movablechannel / 10
        length += 1
    }
    
    //이동 불가능하면 다음 채널 검색을 위해 continue
    if movablechannel == -1 {
        continue
    }
    
    c = min(c, length + abs(N - channel))
    
}

print(min(a, c))