while let input = readLine()  {

    let num = input.split(separator: " ").map { Int($0)!}
    print(num[0] + num[1])
    
}