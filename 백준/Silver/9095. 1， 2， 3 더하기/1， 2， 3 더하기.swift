let num = Int(readLine()!)!
var ns : [Int]  = []

for _ in 1...num {
    ns.append(Int(readLine()!)!)
}


var DP : [Int] = [Int](repeating: 0, count: ns.max()!+1 )

setDP()
printDP()

func setDP(){
    
    for i in 1...DP.count-1 {
        
        if i == 1 {
            DP[i] = 1
        }else if i == 2{
            DP[i] = 2
        }else if i == 3 {
            DP[i] = 4
        }else {
            DP[i] = DP[i-1] + DP[i-2] + DP[i-3]
        }
        
    }
    
}

func printDP(){
    for i in ns {
        print(DP[i])
    }
}
