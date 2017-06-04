//
//  MyEnum.swift
//  OOPSwift
//
//  Created by hsm on 2017/5/26.
//  Copyright © 2017年 huangshuimei. All rights reserved.
//

import Foundation
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return "default"
        }
    }
}
let ace = Rank.Ace

