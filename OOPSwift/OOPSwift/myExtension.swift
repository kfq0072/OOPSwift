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
    func initMoblePhone(_ size:Float32, sign:String){
        self.size = size
        self.sign = sign
        
    }
    func makeCall(_ num:Int64){
        print("you call the num is:\(num)")
    }
}
// MARK: - extension
extension MoblePhone {
    func goWeb(_ url:String){
         print("you go to the url is:\(url)")
    }
}
