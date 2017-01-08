//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 析构过程

/*
 在一个类的实例被释放之前，析构函数被立即调用。用关键字deinit来标示析构函数，类似于初始化函数用init来标示。析构函数只适用于类类型。
 */


// 析构过程原理
/*
 什么是析构函数？
 析构函数(destructor) 与构造函数相反，当对象结束其生命周期时（例如对象所在的函数已调用完毕），系统自动执行析构函数。析构函数往往用来做“清理善后” 的工作（例如在建立对象时用new开辟了一片内存空间，应在退出前在析构函数中用delete释放）。
 */

/*
 Swift 会自动释放不再需要的实例以释放资源。
 Swift 通过自动引用计数（ARC）处理实例的内存管理。
 通常当你的实例被释放时不需要手动地去清理。但是，当使用自己的资源时，你可能需要进行一些额外的清理。
 例如，如果创建了一个自定义的类来打开一个文件，并写入一些数据，你可能需要在类实例被释放之前关闭该文件。
 */

// 语法
/* 语法
 deinit {
 // 执行析构过程
 }
 */

// 实例
var counter = 0
class BaseClass {

    init() {
        counter += 1
        print("BaseClass 构造函数，构造对象")
    }
    
    deinit {
        print("BaseClass 析构函数，析构对象")
        counter -= 1
    }
    
}

var show:BaseClass? = BaseClass()
print(counter)
show = nil
print(counter)



