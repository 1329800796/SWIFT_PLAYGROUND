//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 Swift 字典

 Swift 字典用来存储无序的相同类型数据的集合，Swift 字典会强制检测元素的类型，如果类型不同则会报错。

 Swift 字典每个值（value）都关联唯一的键（key），键作为字典中的这个值数据的标识符。

 和数组中的数据项不同，字典中的数据项并没有具体顺序。我们在需要通过标识符（键）访问数据的时候使用字典，这种方法很大程度上和我们在现实世界中使用字典查字义的方法一样。

 Swift 字典的key没有类型限制可以是整型或字符串，但必须是唯一的。

 如果创建一个字典，并赋值给一个变量，则创建的字典就是可以修改的。这意味着在创建字典后，可以通过添加、删除、修改的方式改变字典里的项目。如果将一个字典赋值给常量，字典就不可修改，并且字典的大小和内容都不可以修改。

 */

/* 创建字典
 我们可以使用以下语法来创建一个特定类型的空字典：

 var someDict =  [KeyType: ValueType]()

 以下是创建一个空字典，键的类型为 Int，值的类型为 String 的简单语法：

 var someDict = [Int: String]()

 以下为创建一个字典的实例：

 var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
 
 */

// 创建一个 特定类型 的空字典
var firstDic = [String:String]()
var intStringDic = [Int:String]()

// 创建一个特定类型字典，并实例化该字典
intStringDic = [1:"one",2:"two",3:"three",4:"four",]

//我们在用字典字面量构造字典时，如果它的键和值都有各自一致的类型，那么就不必写出字典的类 型。

var intStrDic:[Int:String] = [1:"one",2:"two",3:"three",4:"four"]// 使用字典字面量去创建一个字典


// 访问字典
var someVar = intStringDic[1]
print("someVar = \(someVar)")


// 修改字典 <updateValue(forKey:)>
/*
 我们可以使用 updateValue(forKey:) 增加或更新字典的内容。如果 key 不存在，则添加值，如果存在则修改 key 对应的值。updateValue(_:forKey:)方法返回Optional值。实例如下：
 */

var oldVar = intStringDic.updateValue("one 新值", forKey: 1)
print("新的字典是\(intStringDic)")

// 修改字典 <通过指定的 key 来修改>
intStringDic[0] = "修改了哈😀"
print("新的字典是\(intStringDic)")


// 移除 键值对 （key-value）
var removeDic = intStringDic.removeValue(forKey: 1)
print("新的字典是\(intStringDic)")

// 对字典的遍历 <for in 遍历>
for (key,value) in intStringDic{

    print("字典 key:\(key)-value:\(value)")
}


// 遍历字典 <enumerate>
for (key,value) in intStringDic.enumerated(){

    print("字典dic 键:\(key)-值:\(value)")
}

// 字典转换为数组
let  dicKeys = [Int](intStringDic.keys)
let dicValues = [String](intStringDic.values)

print("字典的键是\(dicKeys);字典的值是\(dicValues)")

// count 属性
print("字典含有的键值对是\(intStringDic.count)个")

// isEmpty 属性
var nulDic:[String:String] = [:]// 此时字典变为空字典了
if nulDic.isEmpty {

    print("字典是空的")
}else{

    print("字典不是空的")
}





