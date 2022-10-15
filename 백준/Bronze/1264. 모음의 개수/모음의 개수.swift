var input = readLine()!
let 모음 = ["a","e","i","o","u"]
while input != "#"{

    print(input.lowercased().filter{모음.contains(String($0))}.count)

    input = readLine()!


}