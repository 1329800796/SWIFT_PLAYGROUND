//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// swift 类型转换
/*
 Swift 语言类型转换可以判断实例的类型。也可以用于检测实例类型是否属于其父类或者子类的实例。
 Swift 中类型转换使用 is 和 as 操作符实现，is 用于检测值的类型，as 用于转换类型。
 类型转换也可以用来检查一个类是否实现了某个协议。
 */

// 定义一个类层次
/*
 类型转换用于检测实例类型是否属于特定的实例类型。
 你可以将它用在类和子类的层次结构上，检查特定类实例的类型并且转换这个类实例的类型成为这个层次结构中的其他类型。
 */

//实例
class Subjects {
    var physics : String
    init(physics:String) {
        self.physics = physics
    }
}

class Chemistry: Subjects {
    var equations: String
    init(physics: String, equations: String) {
        self.equations = equations
        super.init(physics: physics)
    }
}

class Maths: Subjects {
    var formulae :String
    init(physics:String,formulae:String) {
        self.formulae = formulae
        super.init(physics: physics)
    }
}

let sa = [Chemistry(physics:"宇宙物理",equations:"牛顿定理"),Maths(physics:"时间简史",formulae:"霍金")]

let samplechem = Chemistry(physics:"宇宙物理",equations:"牛顿定理")
print("实例物理学是: \(samplechem.physics)")
print("实例方程式: \(samplechem.equations)")


// MARK: 检查类型
/*
 类型的检查使用is关键字
 操作符 is 来检查一个实例是否属于特定子类型，若实例属于那个子类型，类型检查操作符返回 true，否则返回 false。
 */

class  Star {
    
    var name:String
    init(name:String) {
        self.name = name
    }
}

class jinStar: Star {
    
    var level : String
    init(name:String,level:String) {
        self.level = level
        super.init(name: name)
    }
}

class huoStar :Star {
    
    var number : Int
    var level : String
    init(name:String,number:Int,level:String) {
        self.level = level
        self.number = number
        super.init(name: name)
    }
}


let  starFamily = [jinStar(name:"金星",level:"宇宙最大"),huoStar(name:"🔥星",number:1,level:"宇宙第二大")];

let oneJinStar = jinStar(name:"金星",level:"宇宙最大")
let oneHuoStar = huoStar(name:"🔥星",number:1,level:"宇宙第二大")

var jinCouunt = 0
var huoCount = 0

for item in starFamily {
    
    // 如果是 huoStar 返回 true  否则 返回 false
    if item is huoStar {
        
        huoCount += 1
    }
    // 如果是 jinStar 返回 true 否则 返回 false
    if item is jinStar {
        
        jinCouunt += 1
    }
}

print(" 🔥星有\(huoCount)个 \n  金星有\(jinCouunt)个")


// MARK:向下转型
/*
 向下转型，用类型转换操作符（ as? 或 as! ）
 当你不确定向下转型可以成功时，用类型转换的条件形式(as?)。条件形式的类型转换总是返回一个可选值（optional value），并且若下转是不可能的，可选值将是 nil。
 只有你可以确定向下转型一定会成功时，才使用强制形式(as!)。当你试图向下转型为一个不正确的类型时，强制形式的类型转换会触发一个运行时错误。
 */

class  Parts {
    var name:String
    var number:String
    init(name:String,number:String) {
        self.name = name
        self.number = number
    }
}

class Door : Parts{
    
    var level :String
    init(name: String, number: String,level: String) {
        self.level = level
        super.init(name: name, number: number)
    }
}


class Window : Parts {
    
    var direction:String
    init(name: String, number: String,direction: String) {
        self.direction = direction
        super.init(name: name, number: number)
    }
}


let someAry = [
    Door(name: "大门", number: "100",level:"1"),
    Door(name: "卧室门", number: "100",level:"0"),
    Door(name: "厨房门", number: "100",level:"2"),
    Window(name: "天窗", number: "100",direction:"南"),
    Window(name: "院窗", number: "100",direction:"北"),
    Window(name: "卧室窗", number: "100",direction:"西")]


let sampleDoor = Door(name: "大门", number: "100",level:"1")
print("\(sampleDoor.name) 的个数是 \(sampleDoor.number)")
print("\(sampleDoor.name) 的等级是 \(sampleDoor.level)")

let window = Window(name: "天窗", number: "100",direction:"南")
print("\(window.name) 的位置是 \(window.direction)")
print("\(window.name) 的个数是 \(window.number)")


var windowCount = 0
var doorCount = 0

for item in someAry {
  // 类型转换的条件形式
    
    if let show =  item as? Door {
        
        print("门的名字是：  \(show.name) 个数是：\(show.number)  等级是：\(show.level)")
    }
    
    if let show = item as? Window {
        
        print("窗户_>：\(show.name)  方向是：\(show.direction)  个数是：\(show.number)")
    }
}


// Any 和 AnyObject 的类型转换
/*
 Swift为不确定类型提供了两种特殊类型别名：
 AnyObject可以代表任何class类型的实例。
 Any可以表示任何类型，包括方法类型（function types）。
 
 注意：
 只有当你明确的需要它的行为和功能时才使用Any和AnyObject。在你的代码里使用你期望的明确的类型总是更好的。
 */

// Any 实例
class Animal {
    var name: String
    var age: Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
}

// 绵羊类
class Sheep:Animal {
    
    // 品种
    var breed:String
    init(name: String, age: Int,breed:String) {
        self.breed = breed
        super.init(name: name, age: age)
    }
}

// 狗类
class Dog:Animal {
    
    // 保留字段
    var keepar : String
    init(name: String, age: Int,keepar: String) {
        self.keepar = keepar
        super.init(name: name, age: age)
    }
}


let someAnimalAry = [
    Sheep(name:"草原绵羊",age:4,breed:"草原元宝"),
    Sheep(name:"西藏绵羊",age:3,breed:"西藏元宝"),
    Sheep(name:"东北绵羊",age:2,breed:"东北元宝"),
    Sheep(name:"江南绵羊",age:1,breed:"江南元宝"),
    Sheep(name:"中原绵羊",age:5,breed:"中原元宝"),
    Dog(name:"田园犬",age:1,keepar:"凶猛无比"),
    Dog(name:"日本犬",age:2,keepar:"凶猛无比"),
    Dog(name:"美国犬",age:3,keepar:"凶猛无比"),
    Dog(name:"狼王犬",age:4,keepar:"凶猛无比"),
    Dog(name:"纯种犬",age:5,keepar:"凶猛无比"),
    ]

var sheepCount = 0
var dogCount = 0

for item in someAnimalAry {
    
    // 类型转换的条件形式
    if let show = item as? Dog {
        print("\n\(show.name);\(show.age);\(show.keepar)")
    }
    
    if let show = item as? Sheep {
        print("\n\(show.name);\(show.age);\(show.breed)")
    }
}


// 可以存储 Any 类型的数组
var exampleany = [Any]()

exampleany.append(someAnimalAry[2])//存对象
exampleany.append(12)//存整形数据
exampleany.append(23.77)
exampleany.append("我是花花🐂")

for item in exampleany {
    switch item {
    
    case let oneitem as Sheep:
            print("\n 找到了一个 Sheep 的对象_____> \(oneitem.name)")
    
    case let oneitem as Double where oneitem > 0:
        print("\n 找到了一条 Double 数据_____> \(oneitem)")
        
    case let oneitem as String:
        print("\n 找到了一个 string 字符串_____> \(oneitem)")
        
    case let oneitem as Int where oneitem > 10:
        print("\n 找到了一个大于 10 的 Int 类型数据_____> \(oneitem)")
    
    default:
        print("\n nothing 没有找到什么东西_____> NULL")
    }
}



// AnyObject 实例
// [AnyObject] 类型的数组


let  saprint:[AnyObject] = [
    Dog(name:"阿黄",age:5,keepar:"黄色纯种田园犬"),
    Sheep(name:"大黑羊",age:12,breed:"小时候印象深刻的一只大公羊"),
    Chemistry(physics:"宇宙物理",equations:"牛顿定理"),
    Maths(physics:"时间简史",formulae:"霍金")]

// [AnyObject] 数组里似乎是不能插入到一条如：12，12.78，“花花牛” 之类的非对象的元素，只能是对象哦

/*
 注意：
 
 在一个switch语句的case中使用强制形式的类型转换操作符（as, 而不是 as?）来检查和转换到一个明确的类型。
 
 */

var count_1 = 0
var count_2 = 0
var count_3 = 0
var count_4 = 0

for item in saprint {
    // 类型转换条件形式
    if let show = item as? Dog {
        print("\n\n \(show.name);\(show.age);\(show.keepar)")
    }
    if  let example = item as? Sheep {
        
        print("\n\n \(example.name);\(example.age);\(example.breed)")
    }
}


