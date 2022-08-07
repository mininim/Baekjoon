let n : Int = Int(readLine()!)!

let input = readLine()!.split(separator: " ").map { a in
    Int(a)!
}


var count : Int = 0

for i in input {
    
    if isPrimeNum(i) == true{
        count += 1
    }
    
}

print(count)

func isPrimeNum(_ n : Int) -> Bool {
    
    if n == 1 {
        return false
    }else {
        for i in 2..<n {
            
            if n % i == 0 {
                return false
            }
            
        }
        return true
    }
    
}
