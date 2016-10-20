//
//  Generics.swift
//  OOPSwift
//
//  Created by huangshuimei on 1/2/16.
//  Copyright © 2016 huangshuimei. All rights reserved.
//

import Foundation

class Generics :NSObject{
    
    /******************** 泛型函数  *******************/
    func swapTwoValue<T>(a:inout T, b:inout T) ->(T,T){
        let temp = a;
        a = b;
        b = temp;
        return (a,b);
    }
    
    
}

/********************  *******************/
struct Stack<ElementType> {
    var items = [ElementType]()
    mutating func push(item:ElementType){
        items.append(item)
    }
}

