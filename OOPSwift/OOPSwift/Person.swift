//
//  Person.swift
//  OOPSwift
//
//  Created by huangshuimei on 15/7/19.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

import UIKit
// MARK: - makeWorkProtocol
protocol makeWorkProtocol
{
    func makeWork()
}
// MARK: - extension
/******************** extension *******************/
extension Person {

    func marray(_ wife:String){
        print("i am marray,my wife name :\(wife)")
    }
}

class Person:NSObject,makeWorkProtocol {
    //声明属性－－－成员变量
    var name : String?
    var age : Int?
    var sex : Character?
    //类的构造函数
    
    init(name:String,age:Int,sex:Character){
        self.name = name;
        self.age = age;
        self.sex = sex;

    }
    //定义行为 －－－方法
    func eat() ->String{
        let eatStr = "I can eat"
        print(eatStr)
        return eatStr;
    }
    func say(){
        let sayStr = "i am \(self.name)"
        print(sayStr)
    }
    
    func makeWork() {
        print("make work")
    }
    
    //循环引用
    lazy var asHtml:(Void)->String = {
        [unowned self] in//防止循环引用
        if  let age = self.age{
            let ageStr = String(age)
            return ageStr
        }
        else
        {
            return "18"
        }
    }
}



