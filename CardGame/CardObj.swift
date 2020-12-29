//
//  CardObj.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-29.
//

import Foundation
import SwiftUI

class CardObj: ObservableObject {
    @Published var faceUp: Bool
    @Published var matched: Bool
    @Published var symbol: String
    @Published var color: Color
    init(face: Bool, m: Bool, sym: String, c: Color) {
        faceUp = face
        matched = m
        symbol = sym
        color = c
    }
}
