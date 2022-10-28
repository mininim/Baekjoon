var N : Int = Int(readLine()!)!

var rooms : Int = 1
var cnt : Int = 1

while N > rooms {
    rooms += 6 * cnt 
    cnt += 1
} 

print(cnt)