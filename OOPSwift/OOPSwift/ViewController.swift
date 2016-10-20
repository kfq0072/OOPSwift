//
//  ViewController.swift
//  OOPSwift
//
//  Created by huangshuimei on 15/7/19.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    var myCodeMan:CodeMan!//组合
    var optional:String?//可选类型
    var applePhone:MoblePhone?
    var function:MyFunction?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCodeMan = CodeMan(name: "kefoqing", age: 20, sex: "m")
        myCodeMan.say()
        myCodeMan.writeCode();
        
        myCodeMan.marray("huangshuimei")
        myCodeMan.makeWork()
        self.myOptional()
        
        print("test extension")
        applePhone = MoblePhone();
        let myPhone:MoblePhone = applePhone!;
        myPhone.initMoblePhone(64.0, sign: "apple")
        myPhone.makeCall(12345)
        myPhone.goWeb("http://www.baidu.com")
        
        print("test protocol")
        let tom:Worker = Worker();
        tom.initWorker(name: "tome", age: 18, job: "code man")
        tom.doJob(jobName: "codeMan")
        print(tom.job!)
        
        let flag:Bool = tom.marryWithPerson(name: "May")
        if flag {
            print("some one marray")
        }else {
            print("no one")
        }
        tom.doJob("2012", jobAddr: "kaifa")
        
        for indexP in 0 ..< 3 {
            print(indexP)
        }
     
        print("/******************** Generics *******************/")
        let swap = Generics()
        var intA = 10;
        var intB = 20;
        let intAB = swap.swapTwoValue(a: &intA, b: &intB);//可以作用到参数，为引用类型
        print("返回元组: \(intAB)，intA:\(intA),intB:\(intB)");
        
        var strA = "tttt";
        var strB = "bbbb";
        let strAB = swap.swapTwoValue(a: &strA, b: &strB)
        print("范型字符串:\(strAB)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    func printSwift()->Void {
        print("i am swift", terminator: "")
    }
    
    func myOptional(){
        if (optional != nil)//解包
        {
            print(optional!)
        }
    }

}

