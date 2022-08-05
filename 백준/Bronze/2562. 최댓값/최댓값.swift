var input : [Int] = []

for _ in 0...8 {
    
    input.append( Int(readLine()!)! )
    
}

print(input.max()! )

for i in 0...8 {
    
    if input[i] == input.max(){
        print(i+1)
        break
        
    }
    
}