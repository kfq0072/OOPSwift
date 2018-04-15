//
//  MySwift3.swift
//  OOPSwift
//
//  Created by hsm on 2017/6/12.
//  Copyright © 2017年 huangshuimei. All rights reserved.
//

import UIKit

//private:private修饰的方法也不可以被代码域之外所访问
//fileprivate:同一个文件的各个方法来说都可以访问到
class MySwift3: NSObject {
    private func test(){
        print("hello private func!!!")
    }
    
    func show(){
        test()
    }
}

class Sub:MySwift3{
    func show_sub(){
//        test() //修改为fileprivate就不会报错了
        
    }
    
}
