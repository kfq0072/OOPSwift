//
//  MyProtocol.swift
//  OOPSwift
//
//  Created by huangshuimei on 1/2/16.
//  Copyright © 2016 huangshuimei. All rights reserved.
//

import Foundation

class Worker: NSObject, marryWithProtocol{//遵守marryWithProtocol
    var name:String?
    var age:Int16?
    var job:String?
    
    func initWorker(name:String, age:Int16, job:String){
        self.name = name;
        self.age = age;
        self.job = job;
    }
    func doJob(jobName:String){
        self.job = jobName;
        print("my name is \(self.name),i am \(age),my job is\(job)");
    }
    func doJob(_ time:String, jobAddr:String){
        print("i am do job in\(jobAddr) at \(time)")
    }
  
    func marryWithPerson(name: String) -> Bool {
        var flag = false;
        if name.isEmpty{
            print(" no one to marry with me");
        }else {
            flag = true
            print(" marry with \(name)");
        }
        return flag;
    }
}

// MARK: - protocol
protocol marryWithProtocol {
    func marryWithPerson(name:String) ->Bool
}

//Swift中mutating关键字
//Swift中protocol的功能比OC中强大很多，不仅能再class中实现，同时也适用于struct、enum。
//使用 mutating 关键字修饰方法是为了能在该方法中修改 struct 或是 enum 的变量(对class没有影响)，在设计接口的时候，也要考虑到使用者程序的扩展性。所以要多考虑使用mutating来修饰方法。

protocol SomeProtocol {
    //协议内容
    
    //    属性的要求
    var money:Float{get set};
    //    方法要求
    mutating func makeMoney();
}

class TestProtocol:SomeProtocol {
    var goldMoney:Float?
    var money: Float {
        get {
            return goldMoney!;
        }
        set {
            self.money = goldMoney!;
        }
    }
    
    convenience init(tmpMoney:Float) {
        self.init();
        self.goldMoney = tmpMoney;
    }
    
    func makeMoney(){
        print("class protocol\(#function) \(self.money)")
    }
}

struct SimpleStruct:SomeProtocol {
    var work:String?
    var money: Float {
        get {
            return 50.0;
        }
        set {
            
        }
    }
    
    mutating func makeMoney() {
        print("struct protocol\(#function) \(self.work!)")
    }
}

enum SimpleEnum:SomeProtocol {
    case off,on
    var money: Float {
        get {
            return 50.0;
        }
        set {
            
        }
    }
    mutating func makeMoney() {
        switch self {
        case .off:
            self = .off;
        default:
            self = .on;
        }
        print("enum protocol\(#function) \(self)")
    }
}
