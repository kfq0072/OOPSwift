//: Playground - noun: a place where people can play

import UIKit

/*********存储属性*********/
//1.存储属性，包括变量存储属性，常量存储属性
struct FixedLengthRange {
    var firstValue:Int
    let length:Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print(rangeOfThreeItems)
rangeOfThreeItems.firstValue = 6

//常量结构题的存储属性：如果创建了一个结构体的实例将其赋值给一个常量，则无法修改该实例的任何属性
let rang = rangeOfThreeItems
//rang.firstValue = 44//会报错

/*********延迟存储属性*********/
//延迟存储属性：当第一次被调用的时候才会计算其初始值的属性
struct DataImport{
    var fileName = "data.txt"
}
struct DataManager{
    lazy var importer = DataImport()
    var data = [String]()
}
var manager = DataManager()
manager.data.append("oneData")
manager.data.append("twoData")
print(manager.importer.fileName)//importer属性现在被创建了

/*********计算属性*********/
//计算属性：不直接存储值，而是提供getter和setter方法，来间接获取
struct culeNums{
    var num1:Int
    var num2:Int
    var nums = [Int]()
    var sum :Int{
        get{
            return num1 + num2
        }
        set{
            num1 = nums[0]
            num2 = nums[1]
        }
    }
}
/*********属性观察器*********/
//属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，甚至新的值和现在的值相同的时候，除了延迟存储属性之外的其他存储属性都可以添加
//willSet:在新的值被设置之前调用
//didSet在新的值被设置之后立即调用
class StepCount{
    var totalSteps:Int = 0{
        willSet(newsTotalSteps){
            print("Abou to\(newsTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue {
                print("Added\(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCount()
stepCounter.totalSteps = 100


/*********类型属性语法*********/
//类型属性是作为类型定义的一部分写在类型最外层的花括号内，使用关键字static来定义属性
struct someStru{
    static var stor = "some value"
    static var comput:Int{
        return 1
    }
}

enum someEN{
    static var stor = "some value"
    static var comput:Int{
        return 6
    }
}

class someClass{
    static var stor = "some value"
    static var comput : Int{
        return 27
    }
    class var overrideableComput: Int {
        return 107
    }
}
