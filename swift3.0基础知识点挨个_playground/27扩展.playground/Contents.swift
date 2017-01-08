//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// swift 扩展

/*
 扩展就是向一个已有的类、结构体或枚举类型添加新功能。
 扩展可以对一个类型添加新的功能，但是不能重写已有的功能。
 
 Swift 中的扩展可以：
 添加计算型属性和计算型静态属性
 定义实例方法和类型方法
 提供新的构造器
 定义下标
 定义和使用新的嵌套类型
 使一个已有类型符合某个协议
 语法
 扩展声明使用关键字 extension：
 extension SomeType {
 // 加到SomeType的新功能写到这里
 }
 一个扩展可以扩展一个已有类型，使其能够适配一个或多个协议，语法格式如下：
 extension SomeType: SomeProtocol, AnotherProctocol {
 // 协议实现写到这里
 }
 
 */


// 计算型属性
extension Int{
    
    // 加上 100
    var add:Int {
        return self + 100
    }
    
    // 减去 100
    var sub:Int {
        
        return self - 100
    }
    
    // 乘上 100
    var mul:Int {
        
        return self*100
    }
    
    // 除以 100
    var div:Int {
        
        return self / Int(100.00)
        // Int(100.00) 就是类型转换，将 douuble 型转化为 Int 类型
    }
    
}


let addtion = 3.add
print(addtion)

let subtraction  = 3.sub
print(subtraction)

let multiplication = 3.mul
print(multiplication)

let divsion = 3.div
print(divsion)

// 混合运算
let mix = 30.add + 30000.div
print("混合运算的结果是 " + "\(mix)")



// 构造器
/*
 扩展可以向已有类型添加新的构造器。
 这可以让你扩展其它类型，将你自己的定制类型作为构造器参数，或者提供该类型的原始实现中没有包含的额外初始化选项。
 扩展可以向类中添加新的便利构造器 init()，但是它们不能向类中添加新的指定构造器或析构函数 deinit() 。
 */

struct sum {
    
    var num1 = 100,num2 = 200

}

struct diff {
    
    var no1 = 200,no2 = 100
    
}

struct mult {
    
    var a = sum()
    var b = diff()
    
}


let  calc = mult()

print("mult 模块内有a  => \(calc.a.num1);\(calc.a.num2)")
print("mult 模块内有b  => \(calc.b.no1);\(calc.b.no2)")

let memcalc = mult(a:sum(num1:12,num2:79),b:diff(no1:16,no2:75))
print("memcalc 模块内 \(memcalc.a.num1,memcalc.a.num2)")
print("memcalc 模块内 \(memcalc.b.no1,memcalc.b.no2)")

// MARK: 这里不是太懂 ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
extension mult {
    init(x:sum ,y:diff) {
        _ = x.num1 + x.num2
        _ = y.no1 + y.no2
    }
}

let a = sum(num1:10,num2:45)
print("sum 模块内部：\(a.num1,a.num2)")

let b = diff(no1:77,no2:100)
print("diff 模块内部：\(b.no1,b.no2)")


// 方法
// 扩展可以向已有类型添加新的实例方法和类型方法。
// 下面的例子向 Int 类型添加一个名为 topics 的新实例的方法。

// 这个topics方法使用了一个() -> ()类型的单参数，表明函数没有参数而且没有返回值。
//定义该扩展之后，你就可以对任意整数调用 topics 方法,实现的功能则是多次执行某任务：

extension Int {
    func topics(summation: () -> ()) {
        for _ in 0..<self {
            summation()
        }
    }
}

4.topics(summation: {
    print("\n 扩展模块内")
})

3.topics(summation: {
    print("\n 内型转换模块内")
})

// 可变实例方法
/*
 通过扩展添加的实例方法也可以修改该实例本身。
 结构体和枚举类型中修改self或其属性的方法必须将该实例方法标注为mutating，正如来自原始实现的修改方法一样。
 */

// 例子：下面的例子向 Swift 的 Double 类型添加了一个新的名为 square 的修改方法，来实现一个原始值的平方计算
extension Double {
    mutating func square() {
        let pi = 3.141592653
        self = pi*self*self
    }
}

var Triall = 3.3
Triall.square()
print("圆形的面积为：\(Triall)")


// 下标
// 扩展可以向一个已有类型添加新下标
// 实例：以下例子向 swift 内建类型 Int 添加了一个整形下标，该下标 [n] 返回十进制数字

extension Int {
    
    subscript( multtable: Int) -> Int {
        var multtable = multtable
        var no1 = 1
        while multtable > 0 {
            no1 *= 10
            multtable -= 1
        }
        return (self / no1) % 10
    }
}

print(12[0])
print(7869[1])
print(786543[2])



// 嵌套类型
// 扩展可以向已有的类、结构体和枚举添加新的嵌套类型：

extension Int {
    enum calc
    {
        case add
        case sub
        case mult
        case div
        case anything
    }
    
    var print: calc {
        switch self
        {
        case 0:
            return .add
        case 1:
            return .sub
        case 2:
            return .mult
        case 3:
            return .div
        default:
            return .anything
        }
    }
}

func result(numb: [Int]) {
    for i in numb {
        switch i.print {
        case .add:
            print(" 10 ")
        case .sub:
            print(" 20 ")
        case .mult:
            print(" 30 ")
        case .div:
            print(" 40 ")
        default:
            print(" 50 ")
            
        }
    }
}

result(numb: [0, 1, 2, 3, 4, 7])
