//: Playground - noun: a place where people can play


//m1: 我们可以使用 import 语句来引入任何的 Objective-C 框架（或 C 库）到 Swift 程序中。例如 import UIKit 语句导入了使用了 UIKit 库和API，我们可以在 Swift 程序中使用他们。

import UIKit


var str = "Hello, playground"
var myName = "牛建伟"
print(str)
print(myName)

//m2：swift 的注释与 C 语言的及其的相似；单行注释以两个反斜线开头；多行注释以/*开始，以*/结束:

//m3: 对于 分割号 ，如果代码是一行的话，可以不写分割号，但是代码是多行的话，就必须要写分割号


//m4: Swift 程序由多种标记组成，标记可以是单词，标识符，常量，字符串或符号。

print("mask!")

// 标示符
/*
 标识符就是给变量、常量、方法、函数、枚举、结构体、类、协议等指定的名字。构成标识符的字母均有一定的规范，Swift语言中标识符的命名规则如下：
 区分大小写，Myname与myname是两个不同的标识符；
 标识符首字符可以以下划线（_）或者字母开始，但不能是数字；
 标识符中其他字符可以是下划线（_）、字母或数字。
 
 注意:Swift中的字母采用的是Unicode编码[1]。Unicode叫做统一编码制，它包含了亚洲文字编码，如中文、日文、韩文等字符，甚至是我们在聊天工具中使用的表情符号
 如果一定要使用关键字作为标识符，可以在关键字前后添加重音符号（`），

 */


/*
 1、与声明有关的关键字
 
 class	deinit	enum	extension
 func	import	init	internal
 let	operator	private	protocol
 public	static	struct	subscript
 typealias	var
 
 2、与语句有关的关键字
 break	case	continue	default
 do	else	fallthrough	for
 if	in	return	switch
 where	while
 
 3、表达式和类型关键字
 as	dynamicType	false	is
 nil	self	Self	super
 true	_COLUMN_	_FILE_	_FUNCTION_
 _LINE_
 
 
 4、在特定上下文中使用的关键字
 associativity	convenience	dynamic	didSet
 final	get	infix	inout
 lazy	left	mutating	none
 nonmutating	optional	override	postfix
 precedence	prefix	Protocol	required
 right	set	Type	unowned
 weak	willSet
 

 */


/*
 swift 的空格：
 Swift语言并不是像C/C++，Java那样完全忽视空格，Swift对空格的使用有一定的要求，但是又不像Python对缩进的要求那么严格。
 在Swift中，运算符不能直接跟在变量或常量的后面。例如下面的代码会报错：

 eg:
 下面是错误的写法：
 let a= 3 + 4
 let a = 3+ 4
 let a = 3 +4

 下面是正确的写法
 let a = 3+4
 let  a = 3 + 4
 print(a)

 */


/*
 Swift 字面量
 所谓字面量，就是指像特定的数字，字符串或者是布尔值这样，能够直接了当地指出自己的类型并为变量进行赋值的值。比如在下面：

 42                 // 整型字面量
 3.14159            // 浮点型字面量
 "Hello, world!"    // 字符串型字面量
 true               // 布尔型字面量

 */




