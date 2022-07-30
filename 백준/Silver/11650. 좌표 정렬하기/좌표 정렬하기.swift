let n = Int(readLine()!)!

struct dots{
    
    let x: Int
    let y: Int
    
    init(x: Int , y: Int){
        self.x = x
        self.y = y

    }
}

var coordinates: [dots] = []



for _ in 1...n {
    
    let xAndY = readLine()!.split(separator: " ")
    coordinates.append( dots( x: Int(xAndY[0])! , y: Int(xAndY[1] )! )  )
    
}

coordinates.sort { (a, b)in
    
    if a.x == b.x {
        return a.y < b.y
    }
    
    return a.x < b.x
    
}


for i in coordinates {
    print(i.x, i.y)
}