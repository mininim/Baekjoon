let num = Int(readLine()!)!


if num == 1 {
    print(0)
}else if num == 2 {
    print(1)
}else if num == 3 {
    print(1)
}else {
    var DP : [Int] = [Int](repeating: 0, count: num+1)
    DP[1] = 0
    DP[2] = 1
    DP[3] = 1
    
    for i in 4...num {
        
        DP[i] = DP[i-1] + 1
        
        if i%3 == 0{
            DP[i] = min( DP[i/3] + 1 , DP[i])
        }
        
        if i%2 == 0 {
            DP[i] = min( DP[i/2] + 1 , DP[i])
        }
        
        
    }
    print(DP[num])
}