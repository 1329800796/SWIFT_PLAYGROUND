//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 类
/*
 Swift 类是构建代码所用的一种通用且灵活的构造体。

 我们可以为类定义属性（常量、变量）和方法。

 与其他编程语言所不同的是，Swift 并不要求你为自定义类去创建独立的接口和实现文件。你所要做的是在一个单一文件中定义一个类，系统会自动生成面向其它代码的外部接口。
 */


/* 类和结构体对比

 Swift 中类和结构体有很多共同点。共同处在于：

 定义属性用于存储值
 定义方法用于提供功能
 定义附属脚本用于访问值
 定义构造器用于生成初始化值
 通过扩展以增加默认实现的功能
 符合协议以对某类提供标准功能

 与结构体相比，类还有如下的附加功能：

 继承允许一个类继承另一个类的特征
 类型转换允许在运行时检查和解释一个类实例的类型
 解构器允许一个类实例释放任何其所被分配的资源
 引用计数允许对一个类的多次引用

 语法:

 Class classname {
 Definition 1
 Definition 2
 ……
 Definition N
 }
 */


// 定义一个 类
class person{

    var perName:String = ""
    var age:Int = 0
    var lover:String = ""
}

// 实例化一个 类 person
let per = person()


// 创建 一个 studentMarks 类
class studentMarks {
    var mark = 300
}

// 实例化 一个 studentMarks 类对象
let marks = studentMarks()
print("成绩为 \(marks.mark)")



// 作为引用类型访问类属性
class MarksStruct {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

class studentPara{

    var mark1 = 100
    var mark2 = 100
    var mark3 = 100
}

let paras = studentPara()
// 访问类属性
print(paras.mark1)


/*
 恒等运算符

 因为类是引用类型，有可能有多个常量和变量在后台同时引用某一个类实例。

 为了能够判定两个常量或者变量是否引用同一个类实例，Swift 内建了两个恒等运算符：
 恒等运算符 	不恒等运算符
 运算符为：=== 	运算符为：!==
 如果两个常量或者变量引用同一个类实例则返回 true 	如果两个常量或者变量引用不同一个类实例则返回 true
 */

class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}

// 这里暂时看不懂啊 🈚️ ⚠️⚠️⚠️
func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

if spClass1 === spClass2 {// false
    print("引用相同的类实例 \(spClass1)")
}

if spClass1 !== spClass2 {// true
    print("引用不相同的类实例 \(spClass2)")
}





