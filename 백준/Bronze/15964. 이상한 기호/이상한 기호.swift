let input = readLine()!.split(separator: " ").map { Int($0)! }

func AandB(_ a : Int,_ b : Int ) -> Int {
    return (a+b)*(a-b)
}

print(AandB(input[0], input[1]))
