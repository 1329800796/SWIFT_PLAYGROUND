//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

/*
 Swift 提供了三种集合类型的数据用来存储集合数据。他们是数组(Arrays)是有序数据的 。 合(Sets)是无序无重复数据的 。字典(Dictionaries)是无序的键值对的 。
 Swift 的 Arrays 、 Sets 和 Dictionaries 类型被实现为泛型集合。
 
 Swift 语言中的 Arrays 、 Sets 和 Dictionaries 中存储的数据值类型必须明确。这意味着我们不能把不正确的数据类型插入其中。同时这也说明我们完全可以对取回值的类型非常自信。

 */

/*数组
 Swift 数组使用有序列表存储同一类型的多个值。相同的值可以多次出现在一个数组的不同位置中。

 Swift 数组会强制检测元素的类型，如果类型不同则会报错，Swift 数组应该遵循像Array<Element>这样的形式，其中Element是这个数组中唯一允许存在的数据类型。

 如果创建一个数组，并赋值给一个变量，则创建的集合就是可以修改的。这意味着在创建数组后，可以通过添加、删除、修改的方式改变数组里的项目。如果将一个数组赋值给常量，数组就不可更改，并且数组的大小和内容都不可以修改。

NSArray创建静态数组和NSMutableArray创建动态数组。

 */

/*创建数组
 
 我们可以使用构造语法来创建一个由特定数据类型构成的空数组：

 var someArray = [SomeType]()

 以下是创建一个初始化大小数组的语法：

 Swift 中的 Array 类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法。我们可以把准备加入新 数组的数据项数量( count )和适当类型的初始值( repeating )传入数组构造函数:
 var threeDoubles = Array(repeating: 0.0, count: 3)
 // threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]

 
 var someArray = [SomeType](repeating: InitialValue, count: countNum)

 以下实例创建了一个类型为 Int ，大小为 3，初始值为 0 的空数组：

 var someInts = [Int](repeating: 0, count: 3)

 以下实例创建了含有三个元素的数组：

 var someInts:[Int] = [10, 20, 30]
 */

// 创建一个初始化大小的数组
let arrary:NSArray = [str,"hell0",42];
// 可以使用下标来访问数组元素
let value = arrary[1]
print("数组是\(arrary),下标为1的数据是\(value)")

var someInts = [Int](repeating: 0, count: 3)


// 修改数组
// 创建特地类型的数组
var intAry = [Int]()
// 添加元素
intAry.append(20)
intAry.append(30)
intAry += [40]
intAry += [10,20,50]
// 修改元素
intAry[0] = 0
intAry[1] = 1000

// 遍历数组
for index in intAry{

    print("\(index)")
}


// 在遍历的同时，如果我们要为每个数据项的值展示其索引值，可以使用 String 的 enumerated() 方法来进行数组遍历，方法如下：
for (index,item) in intAry.enumerated(){

    print("\(index)的下标对应的值是\(item)")
}


var stringAry = ["hello","we","you","he","she"]
for (index,item) in stringAry.enumerated() {

     print("\(index)的下标对应的值是\(item)")
}


// 数组的合并
/*
 我们可以使用加法操作符（+）来合并两种已存在的相同类型数组。新数组的数据类型会从两个数组的数据类型中推断出来：
 
 下面写法错误，必须是同一种类型的数组才能相加
 var newAry = intAry + stringAry

 */

var intAry2 = [10,20,70,90,22]
// 数组的相加，必须保证数组元素数据类型一致，这里实验
var newAry = intAry + intAry2
for (index,item) in newAry.enumerated() {

    print("下标为\(index)的元素是\(item)")
}


// count 属性
print("新数组的元素的个数是\(newAry.count)")

// isEmpty 属性
print("新数组的个数是否为0,\(newAry.isEmpty)")

// 元素的插入 与 删除 

/*
 调用数组的 insert(_:at:) 方法来在某个具体索引值之前添加数据项:
 类似的我们可以使用 remove(at:) 方法来移除数组中的某一项。这个方法把数组在特定索引值中存储的数据项移除并且返回这个被移除的数据项(我们不需要的时候就可以无视它):
 如果我们试着对索引越界的数据进行检索或者设置新值的操作，会引发一个运行期错误。我们可以使用索引值和 数组的 count 属性进行比较来在使用某个索引之前先检验是否有效。除了当 count 等于 0 时(说明这是个空数 组)，最大索引值一直是 count - 1 ，因为数组都是零起索引。
 */

newAry.insert(12, at: 0)
newAry.insert(99999999, at: 6)
print(newAry)

// 移除索引为2的数据项 
newAry.remove(at: 2)
print(newAry)


// 数组的遍历
/*
 使用 for-in 循环来遍历所有数组中的数据项:
 */

for oneIntNumber in newAry {
    
    // 插入了格式化的换行符
    print("\n " + "\(oneIntNumber)")
}


// MARK: 集合 部分的知识点：

/*
 
 合(Set)用来存储相同类型并且没有确定顺序的值。当 合元素顺序不重要时或者希望确保每个元素只出现一次 时可以使用 合而不是数组。
 Swift的 Set 类型被桥接到 Foundation 中的 NSSet 类。
 集合的语法：
 Swift 中的 Set 类型被写为 Set<Element> ，这里的 Element 表示 Set 中允许存储的类型，和数组不同的是，  合没有等价的简化形式。
 */

// 创建一个空的集合
//1、 通过构造器语法创建 集合
var letters = Set<Character>()//通过构造器，这里的 letters 变量的类型被推断为 Set<Character> 。
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
// letters 现在含有1个 Character 类型的值
letters = []
// letters 现在是一个空的 Set, 但是它依然是 Set<Character> 类型

//2、用数组字面量创建 集合

//你可以使用数组字面量来构造 合，并且可以使用简化形式写一个或者多个值作为 合元素。
//一个 Set 类型不能从数组字面量中被单独推断出来，因此 Set 类型必须显式声明。然而，由于 Swift 的类型推 断功能，如果你想使用一个数组字面量构造一个 Set 并且该数组字面量中的所有元素类型相同，那么你无须写出Set 的具体类型。
//下面的例子创建一个称之为 favoriteGenres 的 合来存储 String 类型的值:
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] // favoriteGenres 被构造成含有三个初始值的 合
// 上面的写法还可以按照及简单的形式去写
var favorite:Set = ["Rock", "Classical", "Hip hop"]// 数组字面量中的所有元素类型相同，如果不同则不能这样写

// 访问和修改一个 集合
// 集合 的个数属性 count
print("I have \(favoriteGenres.count) favorite music genres.") // 打印 "I have 3 favorite music genres."
// 使用布尔属性 isEmpty 作为一个缩写形式去检查 count 属性是否为 0 :
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}
// 打印 "I have particular music preferences."

// 为集合 添加一个元素  使用 insert 方法
favoriteGenres.insert("Jack")
print(favoriteGenres)

//通过调用 Set 的 remove(_:) 方法去删除一个元素，如果该值是该 Set 的一个元素则删除该元素并且返回 被删除的元素值，否则如果该 Set 不包含该值，则返回 nil 。另外， Set 中的所有元素可以通过它的 removeAll() 方法删除。

if let removeGender = favoriteGenres.remove("Jack") {
     print("\(removeGender)? I'm over it.")
}else {
    print("I never much cared for that.")
}

// 使用 contains(_:) 方法去检查 Set 中是否包含一个特定的值:
if favoriteGenres.contains("Classical") {
    print("我在集合里发现了 Classical")
}else {
    print("在集合里我没有发现 Classical")
}

// 遍历一个集合
// 你可以在一个 for-in 循环中遍历一个 Set 中的所有值。
for (index,value) in favoriteGenres.enumerated() {

    print("第 \(index) 个元素是 \(value)")
}

print("\n 没有排序前的集合元素数据遍历 \n")
for gender in favoriteGenres {
    
    print(gender)
}

// Swift 的 Set 类型没有确定的顺序，为了按照特定顺序来遍历一个 Set 中的值可以使用 sorted() 方法，它将返回一个有序数组，这个数组的元素排列顺序由操作符'<'对元素进行比较的结果来确定.
print("\n 排序之后的集合元素数据遍历 \n")
for gender in favoriteGenres.sorted() {
    
    print(gender)
}

// 集合 的操作
// 我们能够将两个集合合并到一起，判断两个集合的公共元素，或者判断两个集合的是否全部包含，部分包含，或者不相交。

// 求两个集合的交集 （使用 intersection(_:) 方法根据两个集合中都包含的值创建的一个新的集合。）
// 求两个集合的补集  使用 symmetricDifference(_:) 方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
//使用 union(_:) 方法根据两个集合的值创建一个新的集合。
//使用 subtracting(_:) 方法根据不在该集合中的值创建一个新的集合。
//使用“是否相等”运算符( == )来判断两个集合是否包含全部相同的值。
//使用 isSubset(of:) 方法来判断一个集合中的值是否也被包含在另外一个集合中。
//使用 isSuperset(of:) 方法来判断一个集合中包含另一个集合中所有的值。
//使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或 者父集合并且两个合并不相等。
//使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值(是否没有交集 )。

let oddDigits: Set = [100, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print("\n")
print(oddDigits.intersection(evenDigits).sorted())// 求交集
print("\n oddDigits = \(oddDigits); singleDigitPrimeNumbers = \(singleDigitPrimeNumbers)")
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
print("\n")
print(oddDigits.union(evenDigits).sorted())// 求并集
print("\n")
print(evenDigits.subtracting(singleDigitPrimeNumbers).sorted())


let houseAnimals: Set = ["?", "?"]
let farmAnimals: Set = ["?", "?", "?", "?", "?"]
let cityAnimals: Set = ["?", "?"]

houseAnimals.isSubset(of: farmAnimals)
print(houseAnimals.isSubset(of: farmAnimals))
// true

farmAnimals.isSuperset(of: houseAnimals)
print(farmAnimals.isSuperset(of: houseAnimals))
// true

farmAnimals.isDisjoint(with: cityAnimals)
print(farmAnimals.isDisjoint(with: cityAnimals))
// true





