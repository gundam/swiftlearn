//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var x  = "xxx"
var a = 1
var b = 2
var c = a+b

for index in 1...5
{
    print("\(index) \n")

}
var emstring = ""
emstring = String()
emstring = "xxxx"
emstring.isEmpty

if emstring.isEmpty
{
    print("www")
    
}
emstring = emstring.stringByAppendingString("xxx 😊")
emstring.characters.count
for character in "Dog!🐶".characters {
    print(character)
}



//arrays
var arraytemp  = [Int]()
var arraytempx:[Int] = [1,2]
var xx:[String] = ["a"]
xx.count
xx.isEmpty
xx.append("qqq")
xx.appendContentsOf(["qq","ooop"])

for item in xx{
    print(item)
}


//dic
var tempDic = [String : String]()
tempDic["xb"] = "qba"
tempDic.updateValue("xxx", forKey: "xb")
//tempDic["xb"] = nil
tempDic.removeValueForKey("xb")

tempDic

//fun
func sayHello(name : String, age : Int)->String
{
    print(age)
    return name
}


print(sayHello("xxx",age: 3))
print(sayHello("xxx",age: 4))


//枚举
enum test{
    case north
    case east

}

test.east
var enumTest = test.east
enumTest = .north

switch enumTest
{
case .east:
    print("a")
        break;
default:
    print("b")
    break;

}

enum enumInt : Int {
    case One = 1, Two , Three
}
var enumTestInt = enumInt.One
enumTestInt = .Three
print(enumTestInt.hashValue)
print(enumTestInt.rawValue)


struct Resolution {
    var width = 0
    var height = 0

}

class Video {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    
    
}
var hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.height = 980
print(cinema)
print(hd)

let tenEighty = Video()
tenEighty.resolution = hd

let otherTenEighty = tenEighty
otherTenEighty.name = "abc"
print(tenEighty.name)
otherTenEighty === tenEighty
//hd === cinema === 只能类使用,不能用在struct上
class DataImporter
{
    var fileName = "data.txt"
    
    
}
//懒加载
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    
}

let manager = DataManager()
manager.importer


struct Point {
    var x = 0.0 , y = 0.0
    
    
}

struct Size {
    var width = 0.0, height = 0.0
    
    
}

struct Rect {
    var orgin = Point()
    var size = Size()
    var center : Point{
    
        get {
        
            print("aaabxx")
            
            return Point(x: 1, y: 2)
            
        }
//        如果没有set方法,就是readonly属性
        set {
        
            
            print("qqqqqqq")
            orgin.x = newValue.x
            
        }
        
//        //计算属性不能设置观察者,willset 和didset 与  get和set不能共存,lazy 属性也不支持
//        willSet{
//        
//        
//        }
//        
//        
//        didSet{
//        
//        
//            
//        }
    }
    
    
    
}


var rect = Rect()
rect.center
rect.orgin.x
rect.center = Point(x: 2, y: 3)
rect.orgin.x













