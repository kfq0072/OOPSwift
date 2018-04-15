//
//  Swift3_open.swift
//  OOPSwift
//
//  Created by hsm on 2017/6/12.
//  Copyright © 2017年 huangshuimei. All rights reserved.
//

//import UIKit
//
////注意：关于类和属性swift3有新的关键字：open,filePrivate
////open:以前的public有以下两种，现在swift3用open代替public,而public现在其他module中不可以被override和继承
////1.该item可以在其他作用域被访问
////2.给item可以在其他作用域被继承或重载override
//
//class Swift3_open: NSObject {
//
//}
//
//public class NonSubclassableParentClass {
//    
//    public func foo() {}
//    
//    // 这是错误的写法，因为class已经不能被继承，
//    // 所以他的方法的访问权限不能大于类的访问权限
//    open func bar() {}
//    
//    // final的含义保持不变
//    public final func baz() {}
//}
//
//// 在ModuleA的范围外可以被继承
//open class SubclassableParentClass {
//    // 这个属性在ModuleA的范围外不能被override
//    public var size : Int
//    
//    // 这个方法在ModuleA的范围外不能被override
//    public func foo() {}
//    
//    // 这个方法在任何地方都可以被override
//    open func bar() {}
//    
//    ///final的含义保持不变
//    public final func baz() {}
//}
//
///// final的含义保持不变
//public final class FinalClass { }
///// ModuleB:




