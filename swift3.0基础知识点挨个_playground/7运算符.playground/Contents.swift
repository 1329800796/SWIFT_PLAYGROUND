//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// swift 运算符

/*
 运算符是一个符号，用于告诉编译器执行一个数学或逻辑运算。
 Swift 提供了以下几种运算符：
 算术运算符
 比较运算符
 逻辑运算符
 位运算符
 赋值运算符
 区间运算符
 其他运算符
 
 */


/*  算术 运算符 

 下面的 变量 A 为 10，变量 B 为 20：

 运算符	描述	实例
 +	加号	A + B 结果为 30
 −	减号	A − B 结果为 -10
 *	乘号	A * B 结果为 200
 /	除号	B / A 结果为 2
 %	求余	B % A 结果为 0
 ++	自增	A++ 结果为 11
 --	自减	A-- 结果为 9

 */

var A = 10
var B = 20


// 👇的 写法会报错的 ，好像 自增、自减运算符 只能使用 += -=
//A ++
//print("A++ = \(A)")
//B --
//print("B-- = \(B)")


A += 1
print("A++ = \(A)")
B -= 1
print("B-- = \(B)")

print("A+B = \(A+B)")
print("A-B = \(A-B)")
print("A*B = \(A*B)")
print("A/B = \(A/B)")



/* 如果将上面的改为下面的，就报错了
 
 var A:Int!
 var B:Int!

 A = 10
 B = 20

 A++
 print("A++ = \(A)")
 B--
 print("B-- = \(B)")
 
 如果改为下面的，结果也报错了

 var A = 10
 var B = 20

 A ++
 print("A++ = \(A)")
 B --
 print("B-- = \(B)")

 */


/* 比较运算符
变量 A 为 10，变量 B 为 20：

 运算符	描述	实例
 ==	等于	(A == B) 为 false。
 !=	不等于	(A != B) 为 true。
 >	大于	(A > B) 为 false。
 <	小于	(A < B) 为 true。
 >=	大于等于	(A >= B) 为 false。
 <=	小于等于	(A <= B) 为 true。
 
 */

var a = 10
var b = 100

if (a>b) {

    print("a > b")
}else if (a == b){

    print("a = b")
}else if ( a < b){

    print("a < b")
}else if ( a <= b ){

    print("a <= b")
}else if(a >= b){

    print("a >= b")
}


// 参考自：http://www.runoob.com/swift/swift-operators.html

/*  位运算符
 
 位运算符用来对二进制位进行操作，~,&,|,^分别为取反，按位与与，按位与或，按位与异或运算，如下表实例：
 
 p	q	p & q	p | q	p ^ q
 0	0	0	0	0
 0	1	0	1	1
 1	1	1	1	0
 1	0	0	1	1

 */

//这里不再细致的研习 这些运算的基本原理，只要会用基本 的运算即可 
// <PS 这里稍后还会细致的研究它>



//
/*  赋值运算

 运算符	描述	实例
 =	简单的赋值运算，指定右边操作数赋值给左边的操作数。	C = A + B 将 A + B 的运算结果赋值给 C
 +=	相加后再赋值，将左右两边的操作数相加后再赋值给左边的操作数。	C += A 相当于 C = C + A
 -=	相减后再赋值，将左右两边的操作数相减后再赋值给左边的操作数。	C -= A 相当于 C = C - A
 *=	相乘后再赋值，将左右两边的操作数相乘后再赋值给左边的操作数。	C *= A 相当于 C = C * A
 /=	相除后再赋值，将左右两边的操作数相除后再赋值给左边的操作数。	C /= A 相当于 C = C / A
 %=	求余后再赋值，将左右两边的操作数求余后再赋值给左边的操作数。	C %= A is equivalent to C = C % A
 <<=	按位左移后再赋值	C <<= 2 相当于 C = C << 2
 >>=	按位右移后再赋值	C >>= 2 相当于 C = C >> 2
 &=	按位与运算后赋值	C &= 2 相当于 C = C & 2
 ^=	按位异或运算符后再赋值	C ^= 2 相当于 C = C ^ 2
 |=	按位或运算后再赋值	C |= 2 相当于 C = C | 2

 */


// 区间运算符

/*  wift 提供了两个区间的运算符。
 运算符	描述	实例
 闭区间运算符	闭区间运算符（a...b）定义一个包含从a到b(包括a和b)的所有值的区间，b必须大于等于a。 ‌ 闭区间运算符在迭代一个区间的所有值时是非常有用的，如在for-in循环中：	1...5 区间值为 1, 2, 3, 4 和 5
 半开区间运算符	半开区间（a..	1..< 5 区间值为 1, 2, 3, 和 4

 */

print("闭区间运算符")
for index in 1...5 {

    print("\(index)*5 =\(index*5)")
}

for index in 1...1000 {

    print("\(index)*4 = \(index*4)")
}

print("半开闭区间运算符")
for index in 1..<5 {

    print("\(index)*5 = \(index*5)")
}


// 其他运算符
/*
 
 Swift 提供了其他类型的的运算符，如一元、二元和三元运算符。
 一元运算符对单一操作对象操作（如-a）。一元运算符分前置运算符和后置运算符，前置运算符需紧跟在操作对象之前（如!b），后置运算符需紧跟在操作对象之后（如i++）。
 二元运算符操作两个操作对象（如2 + 3），是中置的，因为它们出现在两个操作对象之间。
 三元运算符操作三个操作对象，和 C 语言一样，Swift 只有一个三元运算符，就是三目运算符（a ? b : c）。
 运算符	描述	实例
 一元减	数字前添加 - 号前缀	-3 或 -4
 一元加	数字前添加 + 号前缀	+6 结果为 6
 三元运算符	条件 ? X : Y	如果添加为 true ，值为 X ，否则为 Y

 */


/* 运算符的优先级
 
 在一个表达式中可能包含多个有不同运算符连接起来的、具有不同数据类型的数据对象；由于表达式有多种运算，不同的运算顺序可能得出不同结果甚至出现错误运算错误，因为当表达式中含多种运算时，必须按一定顺序进行结合，才能保证运算的合理性和结果的正确性、唯一性。
 优先级从上到下依次递减，最上面具有最高的优先级，逗号操作符具有最低的优先级。
 相同优先级中，按结合顺序计算。大多数运算是从左至右计算，只有三个优先级是从右至左结合的，它们是单目运算符、条件运算符、赋值运算符。
 基本的优先级需要记住：
 指针最优，单目运算优于双目运算。如正负号。
 先乘除（模），后加减。
 先算术运算，后移位运算，最后位运算。请特别注意：1 << 3 + 2 & 7 等价于 (1 << (3 + 2))&7
 逻辑运算最后计算
 运算符类型	运算符	结合方向
 表达式运算	() [] . expr++ expr--	左到右
 一元运算符
 * & + - ! ~ ++expr --expr
 * / %
 + -
 >> <<
 < > <= >=
 == !=
 右到左
 位运算符
 &
 ^
 |
 &&
 ||
 左到右
 三元运算符	?:	右到左
 赋值运算符	= += -= *= /= %= >>= <<= &= ^= |=	右到左
 逗号	,	左到右
 
 */



// MARK: 空和运算符
/* 
  空合运算符( a ?? b )将对可选类型 a 进行空判断，如果 a 包含一个值就进行解封，否则就返回一个默认值 b 。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值的类型保持一致。
 空合运算符是对以下代码的简短表达方法:
 a != nil ? a! : b
 上述代码使用了三目运算符。当可选类型 a 的值不为空时，进行强制解封(a!)，访问 a 中的值;反之返 回默认值 b 。无疑空合运算符( ?? )提供了一种更为优 的方式去封装条件判断和解封两种行为，显得简洁以 及更具可读性。
 注意: 如果 a 为非空值( non-nil )，那么值 b 将不会被计算。这也就是所谓的短路求值。
 
*/

let defaultColor = "red"
var userDefaultColor: String? // 默认值为空 nil
var colorNameToUser = userDefaultColor ?? defaultColor
print("\(colorNameToUser)")// 打印为 red
userDefaultColor = "blue"
var colorNameToUser_2 = userDefaultColor ?? defaultColor
print("\(colorNameToUser_2)") // 有值就强制解封 可选类型 userDefaultColor 的值


/*
 逻辑运算符(Logical Operators)
 逻辑运算符的操作对象是逻辑布尔值。Swift 支持基于 C 语言的三个标准逻辑运算。
 •逻辑非( )
 • 逻辑与( ) • 逻辑或( )
 
 第 2 章 Swift 教程 | 68
 逻辑非运算符
 逻辑非运算符( !a )对一个布尔值取反，使得 true 变 false ， false 变 true 。
 它是一个前置运算符，需紧跟在操作数之前，且不加空格。读作 非 a ，例子如下:
 let allowedEntry = false
 if !allowedEntry {
 print("ACCESS DENIED")
 }
 // 输出 "ACCESS DENIED"
 if !allowedEntry 语句可以读作「如果非 allowedEntry」，接下一行代码只有在「非 allowedEntry」为 tru e ，即 allowEntry 为 false 时被执行。
 在示例代码中，小心地选择布尔常量或变量有助于代码的可读性，并且避免使用双重逻辑非运算，或混乱的逻辑
 语句。
 逻辑与运算符
 逻辑与运算符( a && b )表达了只有 a 和 b 的值都为 true 时，整个表达式的值才会是 true 。
 只要任意一个值为 false ，整个表达式的值就为 false 。事实上，如果第一个值为 false ，那么是不去计算 第二个值的，因为它已经不可能影响整个表达式的结果了。这被称做短路计算(short-circuit evaluation)。
 以下例子，只有两个 Bool 值都为 true 的时候才允许进入 if:
 let enteredDoorCode = true
 let passedRetinaScan = false
 if enteredDoorCode && passedRetinaScan {
 print("Welcome!")
 } else {
 print("ACCESS DENIED")
 }
 // 输出 "ACCESS DENIED" 逻辑或运算符
 逻辑或运算符( a || b )是一个由两个连续的 | 组成的中置运算符。它表示了两个逻辑表达式的其中一个为 true ，整个表达式就为 true 。
 同逻辑与运算符类似，逻辑或也是「短路计算」的，当左端的表达式为 true 时，将不计算右边的表达式了，因 为它不可能改变整个表达式的值了。
 
 第 2 章 Swift 教程 | 69
 以下示例代码中，第一个布尔值( hasDoorKey )为 false ，但第二个值( knowsOverridePassword )为 tru e ，所以整个表达是 true ，于是允许进入:
 let hasDoorKey = false
 let knowsOverridePassword = true
 if hasDoorKey || knowsOverridePassword {
 print("Welcome!")
 } else {
 print("ACCESS DENIED")
 }
 // 输出 "Welcome!" 逻辑运算符组合计算
 我们可以组合多个逻辑运算符来表达一个复合逻辑:
 if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
 print("Welcome!")
 } else {
 print("ACCESS DENIED")
 }
 // 输出 "Welcome!"
 这个例子使用了含多个 && 和 || 的复合逻辑。但无论怎样， && 和 || 始终只能操作两个值。所以这实际 是三个简单逻辑连续操作的结果。我们来解读一下:
 如果我们输入了正确的密码并通过了视网膜扫描，或者我们有一把有效的钥匙，又或者我们知道紧急情况下重置
 的密码，我们就能把门打开进入。
 前两种情况，我们都不满足，所以前两个简单逻辑的结果是 false ，但是我们是知道紧急情况下重置的密码 的，所以整个复杂表达式的值还是 true 。
 注意: Swift 逻辑操作符 && 和 || 是左结合的，这意味着拥有多元逻辑操作符的复合表达式优先计算最左 边的子表达式。
 使用括号来明确优先级
 为了一个复杂表达式更容易读懂，在合适的地方使用括号来明确优先级是很有效的，虽然它并非必要的。在上个
 关于门的权限的例子中，我们给第一个部分加个括号，使它看起来逻辑更明确:
 if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
 print("Welcome!")
 } else {
 print("ACCESS DENIED")
 }
 // 输出 "Welcome!"
 
 第 2 章 Swift 教程 | 70
 这括号使得前两个值被看成整个逻辑表达中独立的一个部分。虽然有括号和没括号的输出结果是一样的，但对于
 读代码的人来说有括号的代码更清晰。可读性比简洁性更重要，请在可以让你代码变清晰的地方加个括号吧!
 
 */

