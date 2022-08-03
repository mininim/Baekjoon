let input = readLine()!.split(separator: " ").map{Int($0)!}


switch (input[0], input[1]) {
case let (x , y) where x == y :
    print("==")
case let (x , y) where x < y :
    print("<")
case (_, _):
    print(">")
}
