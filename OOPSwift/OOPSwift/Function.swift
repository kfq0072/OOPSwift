//
//  Function.swift
//  OOPSwift
//
//  Created by huangshuimei on 1/2/16.
//  Copyright © 2016 huangshuimei. All rights reserved.
//

import Foundation
class MyFunction {
    
    /******************** 嵌套函数 *******************/
    func mathOperation(oper:String,num1:Int,num2:Int) -> Int {
        func add(a:Int, b:Int) ->Int {
            return a + b;
        }
        
        func subtract(a:Int, b:Int) ->Int {
            return a - b;
        }
        
        if oper == "+" {
            return add(a: num1, b: num2)
        }else {
            return subtract(a: num1, b: num2)
        }

    }
}
