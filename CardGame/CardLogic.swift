//
//  CardLogic.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-28.
//

import Foundation
import SwiftUI

struct CardLogic {
    var first: Int = 13
    var second: Int = 14
    var firstChosen: Bool = false
    var secondChosen: Bool = false
    // 1  2  3
    // 4  5  6
    // 7  8  9
    // 10 11 12
    // TODO: Pos - Index Hashmap
    let hashmap = [1: [0,0], 2: [0,1], 3: [0,2]]
    var symbols = (["😃", "🧘🏻‍♂️", "🌍", "🍞", "🚗", "📞"] as NSArray).shuffled() as! [String]
    var colors = [Color.blue, Color.red, Color.green, Color.purple, Color.gray, Color.orange]
    var cardState = [Any]()
    //    var cardState = [["👻", Color.blue, true]]
    // TODO: Initial Card Initialization
    init() {
        for i in 0...5 {
            cardState.append([symbols[i],colors[i],false])
        }
    }
}
