//
//  myExtension.swift
//  OOPSwift
//
//  Created by huangshuimei on 1/2/16.
//  Copyright © 2016 huangshuimei. All rights reserved.
//

import Foundation
import UIKit


class MoblePhone {
    var size:Float32?
    var sign:String?
    func initMoblePhone(size:Float32, sign:String){
        self.size = size
        self.sign = sign
        
    }
    func makeCall(num:Int){
        print("you call the num is:\(num)")
    }
}
// MARK: - extension
extension MoblePhone {
    //不能包含property
//    var phoneName:String?
    func goWeb(_ url:String){
         print("you go to the url is:\(url)")
    }    
}
