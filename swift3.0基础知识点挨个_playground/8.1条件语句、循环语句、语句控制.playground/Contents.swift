//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//  条件语句
/*
 Swift 提供了以下几种类型的条件语句：
 语句	描述
 if 语句
 if 语句 由一个布尔表达式和一个或多个执行语句组成。
 if...else 语句
 if 语句 后可以有可选的 else 语句, else 语句在布尔表达式为 false 时执行。
 if...else if...else 语句
 if 后可以有可选的 else if...else 语句, else if...else 语句常用于多个条件判断。
 内嵌 if 语句
 你可以在 if 或 else if 中内嵌 if 或 else if 语句。
 switch 语句
 switch 语句允许测试一个变量等于多个值时的情况。
 */


// 循环语句
/*
 
 循环类型
 Swift 语言提供了以下几种循环类型。点击链接查看每个类型的详细描述：
 循环类型	描述
 for-in
 遍历一个集合里面的所有元素，例如由数字表示的区间、数组中的元素、字符串中的字符。
 for 循环
 用来重复执行一系列语句直到达成特定条件达成，一般通过在每次循环完成后增加计数器的值来实现。
 while 循环
 运行一系列语句，如果条件为true，会重复运行，直到条件变为false。
 repeat...while 循环
 类似 while 语句区别在于判断循环条件之前，先执行一次循环的代码块。

 
 
 循环控制语句
 循环控制语句改变你代码的执行顺序，通过它你可以实现代码的跳转。Swift 以下几种循环控制语句：
 控制语句	描述
 continue 语句
 告诉一个循环体立刻停止本次循环迭代，重新开始下次循环迭代。
 break 语句
 中断当前循环。
 fallthrough 语句
 如果在一个case执行完后，继续执行下面的case，需要使用fallthrough(贯穿)关键字。
 
 */

var A = 10

if A<20 {

    print("A小于20")
}else{

    print("A不小于20")
}

// for - in 循环
// 遍历一个集合里面的所有元素，例如由数字表示的区间、数组中的元素、字符串中的字符。
// 遍历 集合
var someInts:[Int] = [10,20,30,40,50,60]
for index in someInts {

    print("index的值是 \(index)")
}

// 遍历 数字标示的区间
for index in 1...5{

    print("index = \(index)")
}

// 遍While 循环语句
/*
 while 循环会一直运行一段语句直到条件变成 false 。这类循环适合使用在第一次迭代前，迭代次数未知的情况
 下。Swift 提供两种 while 循环形式:
 • while循环，每次在循环开始时计算条件是否符合;
 • repeat-while循环，每次在循环结束时计算条件是否符合。
 Repeat-While
 while 循环的另外一种形式是 repeat-while ，它和 while 的区别是在判断循环条件之前，先执行一次循环的代码 块。然后重复循环直到条件为 false 。
 注意:
 Swift语言的 repeat-while 循环和其他语言中的 do-while 循环是类似的。
 下面是 repeat-while 循环的一般格式:
 repeat {
 statements
 } while condition
 */


// repeat while 语句的例子：
let finalSquare = 25

var square = 0
var diceRoll = 0

repeat {
    // 顺着梯子爬上去或者顺着蛇滑下去 square += board[square]
    // 掷骰子
    diceRoll += 1

    if diceRoll == 7 { diceRoll = 1 } // 根据点数移动
    square += diceRoll
} while square < finalSquare
print("Game over!")


// 贯穿 （fallthrough）
/*
 Swift 中的 switch 不会从上一个 case 分支落入到下一个 case 分支中。相反，只要第一个匹配到的 case 分支 完成了它需要执行的语句，整个 switch 代码块完成了它的执行。相比之下，C 语言要求你显式地插入 break 语句 到每个 case 分支的末尾来阻止自动落入到下一个 case 分支中。Swift 的这种避免默认落入到下一个分支中的 特性意味着它的 switch 功能要比 C 语言的更加清晰和可预测，可以避免无意识地执行多个 case 分支从而引发 的错误。
 如果你确实需要 C 风格的贯穿的特性，你可以在每个需要该特性的 case 分支中使用 fallthrough 关键字。下面 的例子使用 fallthrough 来创建一个数字的描述语句。
 */
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// 输出 "The number 5 is a prime number, and also an integer."


// switch 语句的复合匹配
/*
 当多个条件可以使用同一种方法来处理时，可以将这几种可能放在同一个 case 后面，并且用逗号隔开。当case后 面的任意一种模式匹配的时候，这条分支就会被匹配。并且，如果匹配列表过长，还可以分行书写:
 */
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}
// 输出 "e is a vowel"


// 带标签的语句
/*
 在 Swift 中，你可以在循环体和条件语句中嵌套循环体和条件语句来创造复杂的控制流结构。并且，循环体和条 件语句都可以使用 break 语句来提前结束整个代码块。因此，显式地指明 break 语句想要终止的是哪个循环体或 者条件语句，会很有用。类似地，如果你有许多嵌套的循环体，显式指明 continue 语句想要影响哪一个循环体也 会非常有用。
 为了实现这个目的，你可以使用标签(statement label)来标记一个循环体或者条件语句，对于一个条件语 句，你可以使用 break 加标签的方式，来结束这个被标记的语句。对于一个循环语句，你可以使用 break 或者 co ntinue 加标签，来结束或者继续这条被标记语句的执行。
 声明一个带标签的语句是通过在该语句的关键词的同一行前面放置一个标签，作为这个语句的前导关键字(introd ucor keyword)，并且该标签后面跟随一个冒号。下面是一个针对 while 循环体的标签语法，同样的规则适用于所 有的循环体和条件语句。
 label name : while condition { statements }

 */


var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // 骰子数刚好使玩家移动到最终的方格里，游戏结束。
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // 骰子数将会使玩家的移动超出最后的方格，那么这种移动是不合法的，玩家需要重新掷骰子
        continue gameLoop
    default:
        // 合法移动，做正常的处理 square += diceRoll
        square += board[square]
    } }
print("Game over!")


// 提前退出
/*
 像 if 语句一样， guard 的执行取决于一个表达式的布尔值。我们可以使用 guard 语句来要求条件必须为真 时，以执行 guard 语句后的代码。不同于 if 语句，一个 guard 语句总是有一个 else 从句，如果条件不为真则执 行 else 从句中的代码。
 */



