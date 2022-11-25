import Foundation

struct node{
    var x : Int
    var y : Int
}


var queue : Array<node> = []
var applemap : Array<node> = []
var dirChange : Array<(Int, String)> = []

var mapSize : Int = 0
var time : Int = 0
var dir : Int = 1

func enqueue(x : Int, y : Int){
    queue.append(node(x: x, y: y))
}

func deque() -> node {
    return queue.removeFirst()
    
}

func has_apple(x : Int, y : Int) -> Bool{
    
    return applemap.contains { node -> Bool in
        if node.x == x && node.y == y {
            return true
        }else{
            return false
        }
    }
}

func next_pos(cur_time : Int) -> node{
    
    var head : node = queue.last!
    
    switch dir{
    case 0:
        head.y -= 1
    case 1:
        head.x += 1
    case 2:
        head.y += 1
    case 3:
        head.x -= 1
    default:
        break
    }
    
    for i in dirChange{
        if cur_time == i.0{
            switch i.1{
            case "L":
                dir = (dir + 3) % 4
            case "D":
                dir = (dir + 1) % 4
            default: break
            }
        }
    }
    
    return head
    
}

func isHeadvalid(head : node) -> Bool{
    
    if (head.x >= 0) && (head.y >= 0) && (head.x < mapSize) && (head.y < mapSize)
        && !queue.contains{ node ->Bool in if node.x == head.x && node.y == head.y {return true}else{return false}}{
        
        return true
        
    }else{
        return false
        
    }
}

func rule1(cur_time : Int) -> Bool {
    
    
    var movinghead : node = next_pos(cur_time: cur_time)
    
    if isHeadvalid(head: movinghead){
        enqueue(x: movinghead.x, y: movinghead.y)
        return true
    }else{
        return false
    }
    
    
}

func rule2and3() {
    let head : node = queue.last!
    if has_apple(x: head.x, y: head.y){
        
        applemap.remove(at: applemap.firstIndex(where: { node -> Bool in
            
            if node.x == head.x && node.y == head.y{
                return true
            }else{
                return false
            }
        })!)
        
    }else{
        
        deque()
        
    }
}


func p3190(){
    
    //입력 받기
    
    mapSize = Int(readLine()!)!
    
    
    let K = Int(readLine()!)!
    
    for _ in 0..<K {
        let whereapple = readLine()!.split(separator: " ").map { Int($0)! }
        
        applemap.append(node(x: whereapple[1]-1, y: whereapple[0]-1))
        
    }
    
    let L = Int(readLine()!)!
    
    for _ in 0..<L{
    
        let turn = readLine()!.split(separator: " ").map { String($0) }
        
        dirChange.append((Int(turn[0])!, turn[1]))
        
        
    }
    
    // 뱀배미 출~출~출~출~!!!!발~!~!~!~~~~~~~~~~~
    time += 1
    enqueue(x: 0, y: 0)
    while true{
        if rule1(cur_time: time){
            rule2and3()
            time += 1
//            print(queue)
        }else{
            
            print(time)
            break
        }
    }
   
        
}

p3190()