let input  : [Int] =  readLine()!.split(separator: " ").map{Int($0)!}


let ascending = input.sorted { a, b in
    a < b
}

let descending  = input.sorted { a, b in
    a > b
}

switch input {
case ascending :
    print("ascending")
case descending:
    print("descending")
default:
    print("mixed")
}