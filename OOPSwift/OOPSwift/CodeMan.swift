//
//  CodeMan.swift
//  OOPSwift
//
//  Created by huangshuimei on 15/7/26.
//  Copyright (c) 2015年 huangshuimei. All rights reserved.
//

import UIKit

class CodeMan: Person {
    var workType:String?
    var workAge:uint?
    override init(name nameStr: String, age newAge: Int, sex newSex: Character) {
        super.init(name: nameStr, age: 10, sex: newSex)
    }
    func writeCode(){
        print("i am \(name),i am is \(age) and \(workType) and \(workAge)")
    }

}
