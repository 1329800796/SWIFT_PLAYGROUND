//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* 函数
 Swift 定义函数使用关键字 func。

 定义函数的时候，可以指定一个或多个输入参数和一个返回值类型。

 每个函数都有一个函数名来描述它的功能。通过函数名以及对应类型的参数值来调用这个函数。函数的参数传递的顺序必须与参数列表相同。

 函数的实参传递的顺序必须与形参列表相同，-> 后定义函数的返回值类型。

 语法如下：
 func funcname(形参) -> returntype
 {
 Statement1
 Statement2
 ……
 Statement N
 return parameters
 }

 */


// 定义一个 入参、出参 都为 String 的 stringDealAction 函数

func stringDealAction(str:String) -> String{

    return str.appending("+SWIFT")
}

// 函数的调用
//我们可以通过函数名以及对应类型的参数值来调用函数，函数的参数传递的顺序必须与参数列表相同。
print(stringDealAction(str: "🐂"))


// 函数的参数
// 函数可以接受一个或者多个参数，我们也可以使用元组（tuple）向函数传递一个或多个参数：

func mult(num1:Int,num2:Int)->Int{

    return num1*num2
}

print("2*3 =" + " (\(mult(num1: 2, num2: 3)))")


// 不带参数的函数
/*
 可以创建不带参数的函数
 func funcname() -> datatype {
 return datatype
 }
 */

func noparamMethod()->Int{

    return 18
}

print("(\(noparamMethod()))")


// 元组 作为函数的返回值
/*
 函数返回值类型可以是字符串，整型，浮点型等。

 元组与数组类似，不同的是，元组中的元素可以是任意类型，使用的是圆括号。

 你可以用元组（tuple）类型让多个值作为一个复合值从函数中返回。
 */

func minMax(array:[Int])->(min:Int,max:Int){

    var currentMin = array[0]
    var currentMax = array[0]

    for  value in array[1..<array.count] {

        if value < currentMin {

            currentMin = value

        }else if value > currentMax{

            currentMax = value
        }
    }
    return (currentMin,currentMax)
}

print("[10,20,30,40,50]找到最大的数值与最小的数值分别是"+"(\(minMax(array: [10,20,30,40,50])))")

/*
 minMax(_:)函数返回一个包含两个Int值的元组，这些值被标记为min和max，以便查询函数的返回值时可以通过名字访问它们。
 
 如果你不确定返回的元组一定不为nil，那么你可以返回一个可选的元组类型。

 你可以通过在元组类型的右括号后放置一个问号来定义一个可选元组，例如(Int, Int)?或(String, Int, Bool)?

 注意
 可选元组类型如(Int, Int)?与元组包含可选类型如(Int?, Int?)是不同的.可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。
 前面的minMax(_:)函数返回了一个包含两个Int值的元组。但是函数不会对传入的数组执行任何安全检查，如果array参数是一个空数组，如上定义的minMax(_:)在试图访问array[0]时会触发一个运行时错误。

 为了安全地处理这个"空数组"问题，将minMax(_:)函数改写为使用可选元组返回类型，并且当数组为空时返回nil：
 func minMax(array:[Int])->(min:Int,max:Int)?
 */

// 还有没有返回值函数

func nobackvalue(inputvalue:Int){

    print("(打印调用结果：\(inputvalue))")
}

nobackvalue(inputvalue: 10)

// 函数参数名称
/*
 函数都有一个外部参数和一个局部参数名。
 局部参数就是只能在函数的内部使用；
 外部参数是：
 你可以在局部参数名前指定外部参数名，中间以空格分隔，外部参数名用于在函数调用时传递给函数的参数。

 如果你提供了外部参数名，那么函数在被调用时，必须使用外部参数名。
 */

// 函数参数——(外部参数)
func outParameterAction(firstNum a:Int, secondNum b:Int){

    if a > b {

        print("最大数是 \(a)")
    }else{

        print("最小数是 \(a)")
    }
}

outParameterAction(firstNum: 90, secondNum: 100);


// 指定参数标签
// 你可以在函数名称前指定它的参数标签，中间以空格分隔:

func someFunction(argumentLabel parameterName: Int) {
    // 在函数体内，parameterName 代表参数值
}
//这个版本的 greet(person:) 函数，接收一个人的名字和他的家乡，并且返回一句问候:
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))
// 打印 "Hello Bill! Glad you could visit from Cupertino."
//参数标签的使用能够让一个函数在调用时更有表达力，更类似自然语言，并且仍保持了函数内部的可读性以及清晰的意图。


// 忽略 参数标签
//如果你不希望为某个参数添加一个标签，可以使用一个下划线( _ )来代替一个明确的参数标签。
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
}
someFunction(1, secondParameterName: 2)
//如果一个参数有一个标签，那么在调用的时候必须使用标签来标记这个参数。



// 默认参数值
// 你可以在函数体中通过给参数赋值来为任意一个参数定义默认值(Deafult Value)。当默认值被定义后，调用这 个函数时可以忽略这个参数。

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // 如果你在调用时候不传第二个参数，parameterWithDefault 会值为 12 传入到函数体中。
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault = 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault = 12


// 可变参数
/*
 可变参数可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数，其数量是不确定的。

 可变参数通过在变量类型名后面加入（...）的方式来定义。
 */

func vari<Y>(members:Y...){

    for i in members {

        print(i)
    }
}

vari(members: 1,2,3,4,5,6)
vari(members: 1.23,2.23,3.23,4.23,5.23)
vari(members: "guge","baodu","damuzhi")

// eg:
/*
 可变参数的传入值在函数体中变为此类型的一个数组。例如，一个叫做 numbers 的 Double... 型可变参 数，在函数体内可以当做一个叫 numbers 的 [Double] 型的数组常量。
下面的这个函数用来计算一组任意长度数字的 算术平均数(arithmetic mean):
 
 注意：一个函数最多只能拥有一个可变参数。
 */

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// 返回 3.0, 是这 5 个数的平均数。 arithmeticMean(3, 8.25, 18.75)
// 返回 10.0, 是这 3 个数的平均数。



// 常量、变量、I/O 参数
/*
 一般默认在函数中定义的参数都是常量参数，也就是这个参数你只可以查询使用，不能改变它的值。

 如果想要声明一个变量参数，可以在前面加上var，这样就可以改变这个参数的值了。
 func  getName(var id:String)........
 
 一般默认的参数传递都是传值调用的，而不是传引用。 所以传入的参数在函数内改变，并不影响原来的那个参数。传入的只是这个参数的副本。

 变量参数，正如上面所述，仅仅能在函数体内被更改。如果你想要一个函数可以修改参数的值，并且想要在这些修改在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数（In-Out Parameters）。

 定义一个输入输出参数时，在参数定义前加 inout 关键字。一个输入输出参数有传入函数的值，这个值被函数修改，然后被传出函数，替换原来的值。

 */


/*
func swapTwoInts( a: Int, b:Int){
    
    var a = a
    var b = b
    let t = a
    a = b
    b = t
}

var x = 0,y = 100
print("x = \(x) ;y = \(y)")

swapTwoInts(a: x, b:y)
print("x = \(x) ;y = \(y)")
*/


func swapTwoInts( a:inout Int, b:inout Int){

    let t = a
    a = b
    b = t
}

var x = 0,y = 100
print("x = \(x) ;y = \(y)")

swapTwoInts(a: &x, b:&y)
print("x = \(x) ;y = \(y)")


// 函数类型及使用
// 函数的类型，由函数的参数类型和返回类型组成
func inputs(num1:Int,num2:Int)-> Int{

    return num1/num2
}
print(inputs(num1: 100, num2: 10))


func inputs(name:String)->String{

    return name
}
var name = inputs(name: "小花")
print(name)


// 使用函数类型
/*
 在 Swift 中，使用函数类型就像使用其他类型一样。例如，你可以定义一个类型为函数的常量或变量，并将适当的函数赋值给它：
 */
var inpution:(Int,Int)->Int = inputs
print("输出结果：\(inpution(27,9))")


// 函数类型作为 参数类型、函数类型作为返回类型
func sum(a:Int,b:Int)->Int{

    return a + b
}

var  addtion:(Int,Int)->Int = sum

func another(addtion:(Int,Int)->Int,a:Int,b:Int){

    print("输出结果是:\(addtion(a,b))")
}
another(addtion: sum, a: 100, b: 10)

// 函数嵌套
// 函数嵌套是指：在函数内部定义一个新的函数，外部的函数可以调用函数内部的函数。

func funcA(para number:Int)->()->Int{

    var currentNum = 0
    func funB()->Int{

        currentNum -= number
        return currentNum
    }
    return funB
}

let result = funcA(para: 100)
print(result())





