//
//  MyClass.swift
//  OOPSwift
//
//  Created by hsm on 2017/5/26.
//  Copyright © 2017年 huangshuimei. All rights reserved.
//

import Foundation
class Shape {
    var numberOfSides = 0
    var myHeight:Float!//隐式可选，不需要解包
    var myWidth:Float?//可选，需要解包
    func getMySize(height:Float,width:Float) -> (Float,Float) {
        myHeight = height * 0.5;
        myWidth = width * 0.5
        return (myWidth!, myHeight)
    }
    
    func simpleDes() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}
