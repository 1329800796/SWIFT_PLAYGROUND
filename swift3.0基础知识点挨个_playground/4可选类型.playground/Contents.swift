//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// swift 可选 （Optionals） 类型

/*
 Swift 的可选（Optional）类型，用于处理值缺失的情况。可选表示"那儿有一个值，并且它等于 x "或者"那儿没有值"。
 Swfit语言定义后缀？作为命名类型Optional的简写，换句话说，以下两种声明是相等的：
 var optionalInteger: Int?
 var optionalInteger: Optional<Int>
 在这两种情况下，变量optionalInteger都是可选整数类型。注意，在类型和？之间没有空格。
 Optional 是一个含有两种情况的枚举，None和Some(T)，用来表示可能有或可能没有值。任何类型都可以明确声明为（或者隐式转换）可选类型。当声明一个可选类型的时候，要确保用括号给？操作符一个合适的范围。例如，声明可选整数数组，应该写成(Int[])?；写成Int[]?会报错。
 当你声明一个可选变量或者可选属性的时候没有提供初始值，它的值会默认为nil。
 
 <*********** 下面👇 不是很理解啊>
 可选项遵照LogicValue协议，因此可以出现在布尔环境中。在这种情况下，如果可选类型T?包含类型为T的任何值（也就是说它的值是Optional.Some(T)），这个可选类型等于true，反之为false。
 如果一个可选类型的实例包含一个值，你可以用后缀操作符 ！来访问这个值，如下所示：
 optionalInteger = 42
 optionalInteger! // 42
 使用操作符！去获取值为nil的可选变量会有运行时错误。
 你可以用可选链接和可选绑定选择性执行可选表达式上的操作。如果值为nil，任何操作都不会执行，也不会有运行报错。
  <*********** 上面👆 不是很理解啊>

 */

var myString:String? = nil

if myString != nil {

    print("\(myString)")
}else{
    print("字符为 nil")
}

// 可选类型类似于Objective-C中指针的nil值，但是nil只对类(class)有用，而可选类型对所有的类型都可用，并且更安全。


/* 强制 解析
 可选类型类似于Objective-C中指针的nil值，但是nil只对类(class)有用，而可选类型对所有的类型都可用，并且更安全。

 */

// 👇 使用强制解析
if myString != nil{

    print(myString!)
}else{
    print("myString 的值为 nil")
}

// 注意：
//使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前，一定要确定可选包含一个非nil的值。



/*  other <在swift里为代码打上标记标记>
 在 swift 里的标记：
 http://stackoverflow.com/questions/24017316/pragma-mark-in-swift
 
 // MARK:- someMethod
 // TODO:- someAction
 // FIXME:- 用在类别中
 */



// MARK:-- text 自动解析

/*  自动解析
 你可以在声明可选变量时使用感叹号（!）替换问号（?）。这样可选变量在使用时就不需要再加一个感叹号（!）来获取值，它会自动解析。
 */

var myStr:String!
myStr = "hello world!"
if myStr != nil {
    print(myStr)
}else{
    print("myStr 值为 nil")
}


// MARK:--text 可选绑定

/* 可选绑定
 使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在if和while语句中来对可选类型的值进行判断并把值赋给一个常量或者变量。
 像下面这样在if语句中写一个可选绑定：

 if let constantName = someOptional {
 statements
 }

 
 
 使用可选绑定(optional binding)来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变 量。可选绑定可以用在 if 和 while 语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将 可选类型中的值赋给一个常量或者变量。if 和 while 语句，请参考控制流。
 像下面这样在 if 语句中写一个可选绑定:
 if let constantName = someOptional {
 statements
 }
 你可以像上面这样使用可选绑定来重写 possibleNumber 这个例子 (页 0):
 if let actualNumber = Int(possibleNumber) {
 print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
 } else {
 print("\'\(possibleNumber)\' could not be converted to an integer")
 }
 // 输出 "'123' has an integer value of 123"
 
 
 这段代码可以被理解为:
 “如果 Int(possibleNumber) 返回的可选 Int 包含一个值，创建一个叫做 actualNumber 的新常量并将可选 包含的值赋给它。”
 如果转换成功， actualNumber 常量可以在 if 语句的第一个分支中使用。它已经被可选类型 包含的 值初始化 过，所以不需要再使用 ! 后缀来获取它的值。在这个例子中，actualNumber 只被用来输出转换结果。
 你可以在可选绑定中使用常量和变量。如果你想在if语句的第一个分支中操作 actualNumber 的值，你可以改 成 if var actualNumber ，这样可选类型包含的值就会被赋给一个变量而非常量。
 
 
 */

var mYstr:String?
mYstr = "星星✨"
if let satrStr = mYstr {

    print("mYstr字符串的值为->\n\(satrStr)")

}else{

    print("刚才的字符串没有值")
}

/*
 C 和 Objective-C 中并没有可选类型这个概念。最接近的是 Objective-C 中的一个特性，一个方法要不返回一 个对象要不返回 nil ， nil 表示“缺少一个合法的对象”。然而，这只对对象起作用——对于结构体，基本的 C 类型或者枚举类型不起作用。对于这些类型，Objective-C 方法一般会返回一个特殊值(比如 NSNotFoun
 d )来暗示值缺失。这种方法假设方法的调用者知道并记得对特殊值进行判断。然而，Swift 的可选类型可以让 你暗示任意类型的值缺失，并不需要一个特殊值。
 
 来看一个例子。Swift 的 Int 类型有一种构造器，作用是将一个 String 值转换成一个 Int 值。然而，并 不是所有的字符串都可以转换成一个整数。字符串 "123" 可以被转换成数字 123 ，但是字符串 "hello, wor ld" 不行。
 下面的例子使用这种构造器来尝试将一个 String 转换成 Int
 */

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"(实验：将 possibleNumber 赋值 123、star ,实验 123 的时候打印非 nil 值)
print("\(convertedNumber)")

//如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil :
var surveyAnswer: String?
// surveyAnswer 被自动设置为 nil
print("\(surveyAnswer)")


// MARK: 隐式解析可选类型
/*
 可选类型暗示了常量或者变量可以“没有值”。可选可以通过 if 语句来判断是否有值，如果有值的 话可以通过可选绑定来解析值。
 
 可选类型暗示了常量或者变量可以“没有值”。可选可以通过 if 语句来判断是否有值，如果有值的 话可以通过可选绑定来解析值。
 这种类型的可选状态被定义为隐式解析可选类型(implicitly unwrapped optionals)。把想要用作可选的类型 的后面的问号( String? )改成感叹号( String! )来声明一个隐式解析可选类型。
 当可选类型被第一次赋值之后就可以确定之后一直有值的时候，隐式解析可选类型非常有用。隐式解析可选类型 主要被用在 Swift 中类的构造过程中。
 一个隐式解析可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用，并不需要每次都使用 解析来获取可选值。
 */
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要感叹号来获取值
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // 不需要感叹号


/*
 你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值:
 if assumedString != nil {
 print(assumedString)
 }
 // 输出 "An implicitly unwrapped optional string."
 你也可以在可选绑定中使用隐式解析可选类型来检查并解析它的值:
 if let definiteString = assumedString {
 print(definiteString)
 }
 // 输出 "An implicitly unwrapped optional string."
 */

// 断言
/*
 可选类型可以让你判断值是否存在，你可以在代码中优 地处理值缺失的情况。然而，在某些情况下，如果值缺 失或者值并不满足特定的条件，你的代码可能没办法继续执行。这时，你可以在你的代码中触发一个 断言(asse rtion) 来结束代码运行并通过调试来找到值缺失的原因。
 
 可以使 用断言来保证在运行其他代码之前，某些重要的条件已经被满足。如果不满足，断言在运行的时候有个逻辑判断会返回 false ;如果满足，断言在逻辑判断后返回 true ；只有在 true 的情况下程序才会继续的运行，在 false 的情况下会崩溃掉。

 
 */

let age = 3
assert(age >=  0 , "一个人的年龄不可能小于0")
// 假如，我们把 age的值 改为 - 3 就会报错，编译不能通过（ 因为 age < 0 断言会触发 ）
// 这里只有 age >= 0 的时候，代码才会继续的执行，否则就会报错，不能执行接下来的代码

/*
 如果不需要断言信息，可以省略，就像这样: assert(age >= 0)
 代码使用优化编译的时候，断言将会被禁用.
 
 什么时候使用断言？
 当条件可能为假时使用断言，但是最终一定要保证条件为真，这样你的代码才能继续运行。断言的适用情景:
 整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。
 需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
 一个可选值现在是 nil ，但是后面的代码运行需要一个非 nil 值。
 
 断言可能导致你的应用终止运行，所以你应当仔细设计你的代码来让非法条件不会出现。然而，在你的应用发布
 之前，有时候非法条件可能出现，这时使用断言可以快速发现问题。
 

 */





