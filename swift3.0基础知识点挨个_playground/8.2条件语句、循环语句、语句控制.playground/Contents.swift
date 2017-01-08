//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 提前退出
/*
 像 if 语句一样， guard 的执行取决于一个表达式的布尔值。我们可以使用 guard 语句来要求条件必须为真 时，以执行 guard 语句后的代码。不同于 if 语句，一个 guard 语句总是有一个 else 从句，如果条件不为真则执 行 else 从句中的代码。
 */

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return }
    print("Hello \(name)")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return }
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
// 输出 "Hello John!"
// 输出 "I hope the weather is nice near you." 
greet(person: ["name": "Jane", "location": "Cupertino"])
// 输出 "Hello Jane!"
// 输出 "I hope the weather is nice in Cupertino."


// 检测 API 的可用性
/*
 Swift内置支持检查 API 可用性，这可以确保我们不会在当前部署机器上，不小心地使用了不可用的API。
 编译器使用 SDK 中的可用信息来验证我们的代码中使用的所有 API 在项目指定的部署目标上是否可用。如果我 们尝试使用一个不可用的 API，Swift 会在编译时报错。
 我们在 if 或 guard 语句中使用 可用性条件(availability condition) 去有条件的执行一段代码，来在运行时判 断调用的API是否可用。编译器使用从可用性条件语句中获取的信息去验证，在这个代码块中调用的 API 是否可 用。
 */

if #available(iOS 10, macOS 10.12, *) {
    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
    print("在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API")
} else {
    // 使用先前版本的 iOS 和 macOS 的 API
    print("使用先前版本的 iOS 和 macOS 的 API")
}

/*
 以上可用性条件指定，在iOS中， if 语句的代码块仅仅在 iOS 10 及更高的系统下运行;在 macOS中，仅在 macO S 10.12 及更高才会运行。最后一个参数， * ，是必须的，用于指定在所有其它平台中，如果版本号高于你的设 备指定的最低版本，if语句的代码块将会运行。
 */

