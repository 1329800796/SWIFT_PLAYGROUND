//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 字符

/*
 Swift 的字符是一个单一的字符字符串字面量，数据类型为 Character。
 */

let char1:Character = "A"
let char2:Character = "B"

print("char1 的值是 \(char1)")
print("char2 的值是 \(char2)")

//下面报错，错误写法
/*
let char3:Character = "AB"
print("char3 的值是 \(char3)")
*/

// swift 中不能创建 空的字符（Character类型） 变量 或者 常量
// 下面会报错，错误写法
/*
let char4:Character = ""
var char5:Character = ""
print("\(char4)+\(char5)")
*/

// 遍历字符串中的字符
/*
 Swift 的 String 类型表示特定序列的 Character（字符） 类型值的集合。 每一个字符值代表一个 Unicode 字符。

 您可通过for-in循环来遍历字符串中的characters属性来获取每一个字符的值：
 */

for code in str.characters {

    print("\(code)")
}

// 字符串 拼接 字符
// append()方法能实现字符串的连接字符
var appenStr:String = "njw"
str.append(appenStr)
print(str)


