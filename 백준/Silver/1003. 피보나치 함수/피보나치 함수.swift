let num = Int(readLine()!)!

var ns : [Int]  = []

struct fcalled{
    var one : Int
    var zero : Int
}


for _ in 1...num {

    ns.append(Int(readLine()!)!)
    
}




var DP : [Int : fcalled] = [:]
DP[0] = fcalled(one: 0, zero: 1)
DP[1] = fcalled(one: 1, zero: 0)


setDP()
printDP()


func setDP(){
    
    if ns.max()! > 1 {
        
        for i in 2...ns.max()! {
            
            DP[i] = fcalled(one: DP[i-1]!.one + DP[i-2]!.one  , zero: DP[i-1]!.zero + DP[i-2]!.zero)
            
            
            
        }
        
    }
    
    
}


func printDP(){
    
    for i in ns {
        print("\(DP[i]!.zero) \(DP[i]!.one)")
    }
    
}