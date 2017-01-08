//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*  m1: swift 的变量

 Swift 变量
 变量是一种使用方便的占位符，用于引用计算机内存地址。
 Swift 每个变量都指定了特定的类型，该类型决定了变量占用内存的大小，不同的数据类型也决定可存储值的范围。
 上一章节我们已经为大家介绍了基本的数据类型，包括整形Int、浮点数Double和Float、布尔类型Bool以及字符串类型String。此外，Swift还提供了其他更强大数据类型， Optional, Array, Dictionary, Struct, 和 Class 等。
 接下来我们将为大家介绍如何在 Swift 程序中声明和使用变量。

 */



/* 变量的声明
 变量声明意思是告诉编译器在内存中的哪个位置上为变量创建多大的存储空间。
 在使用变量前，你需要使用 var 关键字声明它，如下所示：
 
 var varA = 42
 print(varA)
 */


/* 变量命名
 变量名可以由字母，数字和下划线组成。
 变量名需要以字母或下划线开始。
 Swift 是一个区分大小写的语言，所以字母大写与小写是不一样的。
 变量名也可以使用简单的 Unicode 字符，如下实例：

 var  uncodeName = "牛建伟"
 var 🐂 = "🐄"
 var 🐄 = 🐂
 print(🐂,🐄)

 */


/* 变量输出
 变量和常量可以使用 print（swift 2 将 print 替换了 println） 函数来输出。
 在字符串中可以使用括号与反斜线来插入变量，如下实例：
 
 */

/*
 类型标注
 当你声明常量或者变量的时候可以加上类型标注(type annotation)，说明常量或者变量中要存储的值的类 型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称。
 这个例子给 welcomeMessage 变量添加了类型标注，表示这个变量可以存储 String 类型的值:
 var welcomeMessage: String
 声明中的冒号代表着“是...类型”，所以这行代码可以被理解为: “声明一个类型为 String ，名字为 welcomeMessage 的变量。”
 
 你可以在一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注:
 var red, green, blue: Double
 一般来说你很少需要写类型标注。如果你在声明常量或者变量的时候赋了一个初始值，Swift可以推断出这个常 量或者变量的类型，在上面的例子中，没有给 赋初始 值，所以变量   的类型是通过一个类型标注指定的，而不是通过初始值推断的。
 
 
 
 常量与变量名不能包含数学符号，箭头，保留的(或者非法的)Unicode 码位，连线与制表符。也不能以数字开 头，但是可以在常量与变量名的其他地方包含数字。
 一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，或者改变其存储的值的类
 型。同时，你也不能将常量与变量进行互转。
 
 */

var name = "中国"
var address = "亚洲🌏"
print("\(name)所在地区为\(address)")


var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome 现在是 "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++" 这会报编译时错误 - languageName 不可改变
print(_:separator:terminator:)
// 是一个用来输出一个或多个值到适当输出区的全局函数。


// Swift 用字符串插值(string interpolation)的方式把常量名或者变量名当做占位符加入到长字符串中，Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义:

print("The current value of friendlyWelcome is \(friendlyWelcome)")
// 输出 "The current value of friendlyWelcome is Bonjour!






