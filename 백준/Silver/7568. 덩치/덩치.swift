//7568 - 덩치

import Foundation


struct 덩치{
    
    
    var 몸무게 : Int = 0
    var 키 : Int = 0
    init(_ 몸무게앤키: Array<Int>) {
        self.몸무게 = 몸무게앤키[0]
        self.키 = 몸무게앤키[1]
    }
    
    static func <( lhs : 덩치, rhs : 덩치  ) -> Bool{
        
        return (lhs.몸무게<rhs.몸무게) && (lhs.키<rhs.키)
        
    }
}


var 집단 : Array<덩치> = []
var N = Int(readLine()!)!

for _ in 1...N{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    집단.append(덩치(input))
    
}

var result : String = ""
for i in 집단{
    var 등급 : Int = 1
    for j in 집단{
        if i < j {
            등급 += 1
        }
    }
    result += "\(등급) "
}

print(result.dropLast())