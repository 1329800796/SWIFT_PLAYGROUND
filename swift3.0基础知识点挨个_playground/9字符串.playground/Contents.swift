//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 字符串

/*
 Swift 字符串是一系列字符的集合。例如 "Hello, World!" 这样的有序的字符类型的值的集合，它的数据类型为 String。 一个 String 的内容可以用许多方式读取，包括作为一个 Character 值的 合。
 
 */


// 创建字符串  <使用字符串字面量>
var stringA = "hello world"
print(stringA)

// 字符串 实例化 （stringB 使用了类型标注、是一个非可选类型的强制解析的写法）
var stringB:String! = "hello world"
print(stringB)

// 空字符串
let  stringC = String()
if stringC.isEmpty {

    print("strngC 是空的")
}else{

    print("stringC  不是空的")
}


// 字符串常量
/*
 你可以将一个字符串赋值给一个变量或常量，变量是可修改的，常量是不可修改的。
 */
var stringD = "字符串常量"
stringD += stringB
print(stringD)

// 字符串中插入值
var varA = 20
let letA = 100
var carC:Float = 20.0

var stringResult = "\(varA)*\(letA) = \(varA*letA)"
print(stringResult)

// 字符串连接,字符串可以通过 + 号来连接
let constA = "swift"
let constB = "\'http://www.baidu.com\'"

print("\(constA)"+"\(constB)")

var varconstAB = constA + constB
print(varconstAB)


// 字符串的长度,字符串的长度可以用 string.characters.count 来计算
var varLength = "http://www.baidu.com"
let length = varLength.characters.count
print("\(varLength)"+"的长度是"+"\(length)")

// 字符串的比较
var comA = "swift"
var comB = "swift"
var comC = "swift!"

if comA == comB {

    print("\(comA)"+"与"+"\(comB)"+"是相等的")
}else{

    print("\(comA)"+"与"+"\(comB)"+"不是相等的")
}

if comA == comC {

    print("\(comA)"+"与"+"\(comC)"+"是相等的")
}else{
    print("\(comA)"+"与"+"\(comC)"+"不是相等的")
}

// Unicode 字符串
/*
Unicode 是一个国际标准，用于文本的编码，Swift 的 String 类型是基于 Unicode建立的。你可以循环迭代出字符串中 UTF-8 与 UTF-16 的编码
 */

var unicodeStr = "我可不是小牛"
print("UTF-8 编码：")
for code in unicodeStr.utf8 {

    print("\(code)")
}
print("UTF-16 编码：")
for code in unicodeStr.utf16 {

    print("\(code)")
}

/*
 
 UTF-8 、UTF-16 的区别？

 http://blog.csdn.net/lcj200813138020/article/details/46914153

 */


/* 字符串函数及运算符
 Swift 支持以下几种字符串函数及运算符：
 序号 	函数/运算符 & 描述
 1

 isEmpty

 判断字符串是否为空，返回布尔值
 2

 hasPrefix(prefix: String)

 检查字符串是否拥有特定前缀
 3

 hasSuffix(suffix: String)

 检查字符串是否拥有特定后缀。
 4

 Int(String)

 转换字符串数字为整型。 实例:

 let myString: String = "256"
 let myInt: Int? = Int(myString)

 5

 String.characters.count

 计算字符串的长度
 6

 utf8

 您可以通过遍历 String 的 utf8 属性来访问它的 UTF-8 编码
 7

 utf16

 您可以通过遍历 String 的 utf8 属性来访问它的 UTF-16 编码
 8

 unicodeScalars

 您可以通过遍历String值的unicodeScalars属性来访问它的 Unicode 标量编码.
 9

 +

 连接两个字符串，并返回一个新的字符串
 10

 +=

 连接操作符两边的字符串并将新字符串赋值给左边的操作符变量
 11

 ==

 判断两个字符串是否相等
 12 	
 
 <
 
 比较两个字符串，对两个字符串的字母逐一比较。
 13 	
 
 !=
 
 比较两个字符串是否不相等。
 
 */

var emptyString = ""        // 空字符串

var stillEmpty = String()   // 另一种空字符串的形式

let helloWorld = "Hello World!" // 字符串字面量

let a = String(true)        // 由布尔值转换为："true"

let b: Character = "A"      // 显式创建一个字符类型

let c = String(b)           // 从字符 "A" 转换

let d = String(3.14)        // 从 Double 类型转换为 "3.14"

let e = String(1000)        // 从 Int 类型转换为 "1000"

let f = "Result = \(d)"     // 字符串插值 "Result = 3.14"

let g = "\u{2126}"          // Unicode 字符，欧米伽符号 Ω


var comE = str.components(separatedBy: "Hello")
print(comE.count)
comE[0]
comE[1]

str = "ABCDEFGHIJK"


//字符串可以通过传递一个值类型为 Character 的数组作为自变量来初始化:
let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
let catString = String(catCharacters)
print(catString)
// 打印输出:"Cat!?"


/*
字符串字面量的特殊字符 字符串字面量可以包含以下特殊字符:
• 转义字符 \0 (空字符)、 \\ (反斜线)、 \t (水平制表符)、 \n (换行符)、 \r (回车符)、 \" (双引 号)、 \' (单引号)。
• Unicode 标量，写成 \u{n} (u为小写)，其中 n 为任意一到八位十六进制数且可用的 Unicode 位码。
*/


// 字符串的插入和删除
/*
 调用 insert(_:at:) 方法可以在一个字符串的指定索引插入一个字符，调用 insert(contentsOf:at:) 方法可 以在一个字符串的指定索引插入一个段字符串。
 调用 remove(at:) 方法可以在一个字符串的指定索引删除一个字符，调用 removeSubrange(_:) 方法可以在一 个字符串的指定索引删除一个子字符串。
 */

var welcome = "hello njw"
welcome.insert("!", at: welcome.endIndex)
print(welcome)

welcome.remove(at: welcome.startIndex)
print(welcome)

// 移除最后一个字母前面的一个字母(是一个字母)
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)

// 移除规定范围内的字符串 (注意：..< 与前面后面的表达式之间要保持一个空格，语法需要)
let range = welcome.index(welcome.endIndex, offsetBy: -2) ..< welcome.endIndex
welcome.removeSubrange(range)
print(welcome)

