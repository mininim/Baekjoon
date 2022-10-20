import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var 듣도못한사람 : Set<String> = []
var 보도못한사람 : Set<String> = []


for _ in 0..<input[0]{
    
    듣도못한사람.insert( String(readLine()!) )
    
}

for _ in 0..<input[1]{
    
    보도못한사람.insert( String(readLine()!) )
    
}

var 듣보잡 : Set<String> = 듣도못한사람.intersection(보도못한사람)
print(듣보잡.count)
for i in 듣보잡.sorted(){
 print(i)
}
