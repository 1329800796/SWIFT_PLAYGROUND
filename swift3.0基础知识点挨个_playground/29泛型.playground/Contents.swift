//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 泛型
/*
 swift 提供泛型让我们可以写出灵活且可以重用的函数和类型。
 swift 标准库是通过泛型代码构建出来的。
 swift 的数组和字典类型都是泛型集。
 我们可以创建  string、int、数组或者是其他任何类型的数据的数组。
 */

// 下面的实例是一个 非泛型 函数去交换两个 int 数字。
// 定义一个交换函数
func exchange( a:inout Int,b :inout Int){
    
    let tem = a
    a = b
    b = tem
}

var numb1 = 100
var uumb2 = 200

print("交换前的数据是：\(numb1) 和 \(uumb2)")

exchange(a: &numb1, b: &uumb2)

print("交换后数据: \(numb1) 和 \(uumb2)")



// 泛型函数可以访问任何类型，如 Int 、String
// 下面是一个泛型函数 exchange 用来交换两个 int 和 String 的值

func exchange<T>(a:inout T,b:inout T){
    
    let tem = a
    a = b
    b = tem
}

var a = "nxj"
var b = "njw"

print("交换前 \(a) \(b)")

exchange(a: &a, b: &b)

print("交换后 \(a) \(b)")

/*
 
 这个函数的泛型版本使用了占位类型名字（通常此情况下用字母T来表示）来代替实际类型名（如Int、String或Double）。占位类型名没有提示T必须是什么类型，但是它提示了a和b必须是同一类型T，而不管T表示什么类型。只有 exchange(_:_:)函数在每次调用时所传入的实际类型才能决定T所代表的类型。
 另外一个不同之处在于这个泛型函数名后面跟着的占位类型名字（T）是用尖括号括起来的（）。这个尖括号告诉 Swift 那个T是 exchange(_:_:)函数所定义的一个类型。因为T是一个占位命名类型，Swift 不会去查找命名为T的实际类型。
 */


// 泛型类型
// swift 允许你定义自己的泛型类型
// 自定义的类、结构体、和枚举作用于任何类型，如同 Array 和 Dictionary 的用法。
struct TOS<T> {
    var itmes = [T]()
    mutating func push(item:T) {
        itmes.append(item)
    }
    mutating func pop() -> T {
        return itmes.removeLast()
    }
}

var tos = TOS<String>()
tos.push(item: "SWIFT")
tos.push(item: "泛型")
tos.push(item: "类型参数")

print(tos.itmes)

tos.pop()
print(tos.itmes)


// 扩展泛型类型
//当你扩展一个泛型类型的时候（使用 extension 关键字），你并不需要在扩展的定义中提供类型参数列表。更加方便的是，原始类型定义中声明的类型参数列表在扩展里是可以使用的，并且这些来自原始类型中的参数名称会被用作原始定义中类型参数的引用。

// 实例：下面的例子扩展了泛型 TOS 类型，为其添加了一个名为 first 的只读计算属性，它将会返回当前栈顶端的元素而不会将其从栈中移除。


//  扩展泛型 TOS 类型
extension TOS {
    var first:T? {
        // 使用了三目运算符
        return itmes.isEmpty ? nil : itmes[itmes.count  - 1]
    }
}

if let first = tos.first {
    print("栈顶部项：\(first)")
}


/*  类型约束
1、 类型约束
 类型约束指定了一个必须继承自指定类型的类型参数，或遵循一个特定的协议或协议构成。
2、 类型约束语法：
 我们可以写在一个类型参数名后面的类型约束，通过冒号分割，来作为类型参数链的一部分。这种作用于泛型函数的类型约束的基础语法如下所示（和泛型类型语法相同）

 func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
 // 这里是函数主体
 }
 */

// 实例：查找一个字符串数组中某个字符串的函数
func findStrigIndex(arrary:[String],_ valueToFind:String)->Int? {
    for (index,value) in arrary.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    
    return nil
}

let  strings = ["star","cow","🐂","🐄","🐃","🐂🐂🐂","✨✨","✨✨✨✨"]
if let fondIndex = findStrigIndex(arrary: strings, "✨✨") {
    print("找到了✨✨,下标是\(fondIndex)")

}

// 关联类型实例
/*
 swift 中使用 typealias 关键字来设置关联类型。
 定义一个协议时，有的时候声明一个或多个关联类型作为协议定义的一部分是非常有用的。
 */

protocol Container {
    // 定义了一个ItemType关联类型
    //  typealias ItemType 不被编译器通过
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

// 遵循Container协议的泛型POS类型
struct POS<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item: item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
}

var pos = POS<String>()
pos.push(item: "Swift")
print(pos.items)

pos.push(item: "泛型")
print(pos.items)

pos.push(item: "参数类型")
print(pos.items)

pos.push(item: "类型参数名")
print(pos.items)

// where 语句
/*
 类型约束能够确保类型符合泛型函数或类的定义约束。
 你可以在参数列表中通过where语句定义参数的约束。
 你可以写一个where语句，紧跟在在类型参数列表后面，where语句后跟一个或者多个针对关联类型的约束，以及（或）一个或多个类型和关联类型间的等价(equality)关系。
 */
struct Stack<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item: item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
}

func allItemsMatch<
    C1: Container, C2: Container>
    (someContainer: C1, anotherContainer: C2) -> Bool
    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable {
    // 检查两个Container的元素个数是否相同
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    // 检查两个Container相应位置的元素彼此是否相等
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    // 匹配所有项，返回 true
    return true
}

var stak = Stack<String>()
stak.push(item: "Swift")
print(stak.items)

stak.push(item: "泛型")
print(stak.items)

stak.push(item: "Where 语句")
print(stak.items)

var eos = ["Swift", "泛型", "Where 语句"]
print(eos)
