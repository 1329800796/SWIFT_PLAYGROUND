//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 可选链

/*
 可选链（Optional Chaining）是一种是一种可以请求和调用属性、方法和子脚本的过程，用于请求或调用的目标可能为nil。
 可选链返回两个值：
 如果目标有值，调用就会成功，返回该值
 如果目标为nil，调用将返回nil
 多次请求或调用可以被链接成一个链，如果任意一个节点为nil将导致整条链失效。
 
 */

// 可选链可替代强制解析
/*
 通过在属性、方法、或下标脚本的可选值后面放一个问号(?)，即可定义一个可选链。
 
 可选链 '?'
 ? 放置于可选值后来调用方法，属性，下标脚本
 当可选为 nil 输出比较友好的错误信息
 
 感叹号（!）强制展开方法，属性，下标脚本可选链
 ! 放置于可选值后来调用方法，属性，下标脚本来强制展开值
 当可选为 nil 时强制展开执行错误
 */

// 使用感叹号(!)可选链实例
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

//将导致运行时错误
//let roomCount = john.residence!.numberOfRooms

// 链接可选 residence 属性，如果 residence 存在则取回 numberOfRooms 的值
if let roomCount = john.residence?.numberOfRooms {
    
    print("john 的房间号是：\(roomCount)")
}else{
    print("不能查看房间号")
}

/*
 因为这种尝试获得 numberOfRooms 的操作有可能失败，可选链会返回 Int? 类型值，或者称作 "可选Int"。当residence是空的时候（上例），选择Int将会为空，因此会出现无法访问numberOfRooms的情况。
 要注意的是，即使numberOfRooms是非可选Int（Int?）时这一点也成立。只要是通过可选链的请求就意味着最后numberOfRooms总是返回一个Int?而不是Int。（就是说 roomCount 是一个非可选int 类型 (int?) ）
 */


// 为可选链定义模型类
/*
 可以使用可选链来多层调用属性、方法、和下标脚本。这让你可以利用它们之间的复杂模型来获取更底层的属性，并检查是否可以成功获取此类底层属性。
 */


// Residence 关键字的意思？ < http://c.biancheng.net/cpp/html/2286.html >

// 实例：定义了四个模型类，其中包括多层可选链
class Man {
    var resudence:Apartment?
}

// 定义了一个变量 rooms ,它初始化为一个 room[] 类型的空数组
class Apartment {
    
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        return rooms[i]
    }
    func printNumberOfRooms() {
        print("房间号为 \(numberOfRooms)")
    }
    var address: Address?
}

// Room 定义一个name属性和一个设定room名的初始化器
class Room {
    let name: String
    init(name: String) { self.name = name }
}

// 模型中的最终类叫做Address
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if (buildingName != nil) {
            return buildingName
        } else if (buildingNumber != nil) {
            return buildingNumber
        } else {
            return nil
        }
    }
}

// 通过可选链调用方法
/*
 你可以使用可选链的来调用可选值的方法并检查方法调用是否成功。即使这个方法没有返回值，你依然可以使用可选链来达成这一目的。
 */

let man = Man()

if ((man.resudence?.printNumberOfRooms()) != nil) {
    print("输出房间号")
}else{
    print("无法输出房间号")
}

// 使用可选链调用下标脚本
// 可以使用可选链来尝试从下标脚本获取值并检查下标脚本的调用是否成功，然而，你不能通过可选链来设置下标脚本。

let mm = Man()
if let firstRoomName = mm.resudence?.rooms[0].name {
    print("第一个房间的名字是：\(firstRoomName)")
}else{
    print("无法检测到房间")
}

// 实例2

/*
 实例中创建一个Residence实例给john.residence，且在他的rooms数组中有一个或多个Room实例，那么你可以使用可选链通过Residence下标脚本来获取在rooms数组中的实例了：
 */
class Person_li2 {
    
    var residence_li2:Residence_li2?
}

// 定义了一个变量 rooms 它被初始化为一个 Room[] 类型的空数组
class Residence_li2 {
    
    var rooms = [Room_li2]()
    var numberOfRooms:Int {
        return rooms.count
    }
    subscript(i:Int)-> Room_li2 {
        return rooms[i]
    }
    
    func printNumberOfRooms() {
        
        print("房间号为：\(numberOfRooms)")
    }
    
    var address : Address_li2?
}

// Room 定义一个name 属性和设定 room名的初始值
class Room_li2 {
    
    var name:String
    init(name:String) {
        self.name = name
    }
}

// 模型中最终的类叫做 Address_li2
class Address_li2 {
    
    var streetName: String?
    var streetNumber: String?
    var streetClass: String?
    
    func buildingIdentifier() -> String? {
        
        if (streetName != nil) {
            
            return  streetName
        }else if (streetNumber != nil){
            
            return streetNumber
        }else if (streetClass != nil){
            
            return streetClass
        }else{
            
            return nil
        }
    }
}

let per2 = Person_li2()
let per2House = Residence_li2()

per2House.rooms.append(Room_li2(name:"书香阁"))
per2House.rooms.append(Room_li2(name:"厨房"))
per2House.rooms.append(Room_li2(name:"卧室"))

per2.residence_li2 = per2House

if let firstRoomName = per2.residence_li2?[0].name {
    
    print("第一个房间名为：\(firstRoomName)")
}else {
    print("无法检测到房间")
}


// 通过可选链接调用来访问下标
// 通过可选链接调用，我们可以用下标来对可选值进行读取或写入，并且判断下标调用是否成功。

// 实例
class Man3 {
    
    var residence : Residence_li3?
}

// 定义一个变量 rooms，它被初始化为一个 Room[] 类型的空数组
class Residence_li3 {
    
    var rooms = [Room_li3]()
    
}

// 定义一个类 Room_li3 ，定义一个 roomName 并对其初始化操作
class Room_li3 {
    
    let roomName : String
    init(roomName:String) {
        self.roomName = roomName
    }
}

// 定义一个 街道类 Street_li3
class Street_li3 {
    
    var streetName: String?
    var streetNumber: String?
    var streetClass: String?
    
    func streetLi3Identifer() -> String? {
        
        if (streetName != nil) {
          return streetName
        }else if (streetNumber != nil) {
            return streetNumber
        }else if (streetClass != nil) {
            return streetClass
        }else{
            return nil
        }
    }
}

let per3 = Man3()

let per3hourse = Residence_li3()

per3hourse.rooms.append(Room_li3(roomName:"客厅"))
per3hourse.rooms.append(Room_li3(roomName:"厕所"))

per3.residence = per3hourse

if let firstRoomName = per3.residence?.rooms[0].roomName {
    
    print("per3.residence 的第一个房间名字为：\(firstRoomName)")
}else{
    print("没有检索到房间")
}

// 访问可选类型的下标
// 如果下标返回可空类型值，比如Swift中Dictionary的key下标。可以在下标的闭合括号后面放一个问号来链接下标的可空返回值

var testSorce = ["Dave":[86,83,84],"Bev":[79,94,81]]
testSorce["Dave"]?[0] = 91
testSorce["Bev"]?[0] += 1
testSorce["Brian"]?[0] = 72

/*
 上面的例子中定义了一个testScores数组，包含了两个键值对， 把String类型的key映射到一个整形数组。
 这个例子用可选链接调用把"Dave"数组中第一个元素设为91，把"Bev"数组的第一个元素+1，然后尝试把"Brian"数组中的第一个元素设为72。
 前两个调用是成功的，因为这两个key存在。但是key"Brian"在字典中不存在，所以第三个调用失败。
 */

print("\(testSorce)")


// 链接 多层 链接
/*
 可以将多层可选链连接在一起，可以掘取模型内更下层的属性方法和下标脚本。然而多层可选链不能再添加比已经返回的可选值更多的层。
 
 如果你试图通过可选链获得Int值，不论使用了多少层链接返回的总是Int?。 相似的，如果你试图通过可选链获得Int?值，不论使用了多少层链接返回的总是Int?。<http://www.runoob.com/swift/swift-optional-chaining.html 这里有疑问啊，描述的不是很清楚>
 */

// 实例1
class Man4 {
    
    var residence:Residence_li4?
}

// 定义了一个变量 rooms，它被初始化为一个Room_li4[]类型的空数组
class Residence_li4 {
    
    var rooms = [Room_li4]()
    var numberOfRooms:Int {
        return rooms.count
    }
    
    subscript(i:Int)-> Room_li4{
        
        return rooms[i]
    }

    func printNumberOfRooms() {
        print("房间号为：\(numberOfRooms)")
    }
    
    var  street:Street_li4?
}

// Room_li4 定义了一个 roomName 属性，和设定 room名的 初始值
class Room_li4{
    let name :String
    init(name:String) {
        self.name = name
    }
}

// 模型中的最终类叫做 Street_li4
class Street_li4 {
    
    var streeRold:String?
    var streeNumber:String?
    
    func streetInfo() -> String? {
        if (streeRold != nil) {
            
            return streeRold
        }else if (streeNumber != nil){
            return streeNumber
        }else{
            return nil
        }
    }
}

let per4 = Man4()

if let per4Street = per4.residence?.rooms[0].name {
    print("第一条街道的名字为：\(per4Street)")
}else{
    print("第一条街道没有名字")
}


// 实例 2 （为可选链的某一环设定属性值，通过多层可选链去得到这个值）
class Cat {
    var family:Family?
    
}

class Family{
    
    var cats = [OneCat]()
    var ageOfOneCat : Int {
        return cats.count
    }
    
    subscript(i:Int)-> OneCat{
        get{
            return cats[i]
        }
        set{
            cats[i] = newValue
        }
    }
    
    func printNumberOfCats() {
        
        print("猫 age 为：\(ageOfOneCat)")
    }
    
    var oneCatAdderss: CatAddress?
    
}

class OneCat {
    let gender:String
    init(gender:String) {
        self.gender = gender
    }
}

class CatAddress {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if (buildingName != nil) {
            return buildingName
        } else if (buildingNumber != nil) {
            return buildingNumber
        } else {
            return nil
        }
    }
}

let onecat = Cat()
onecat.family?[0] = OneCat(gender:"2")

let onecatFamily = Family()
onecatFamily.cats.append(OneCat(gender:"4"))

onecat.family = onecatFamily

if let firstCatGender = onecat.family?[0].gender {
    
    print("第一只猫 age 为 \(firstCatGender)")
}else{
    print("第一只猫 age 没有找到")
}


// MARK: 对返回可选值的函数进行连接
// 我们可以通过可选连接来调用返回可空值的方法，并且可以继续对可选值进行连接。

class Dog {
    var lovers:Lovers?
}

// 定义了一个变量 rooms，它被初始化为一个Room[]类型的空数组
class Lovers{
    
    var  hobbys = [Hobby]()
    var hobbyNumber:Int{
        return hobbys.count
    }

    func printHobby() {
        
        print("爱好是 \(hobbys)")
    }
}

// Hobby 定义一个 hobby 属性和一个设定 hobby 名的初始化器
class Hobby {
    
    var hobby:String?
    init(hobby:String) {
        self.hobby = hobby
    }

}

let singledog = Dog()

if singledog.lovers?.printHobby() != nil {
    
    print("单身🐶 有爱好")
}else{
    
    print("单身🐶 无爱好")
}