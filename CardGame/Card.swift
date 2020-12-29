//
//  Card.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-28.
//

import SwiftUI

struct Card: View {
    @State var symbol: String
    @State var color: Color
    @State var matched: Bool
    var body: some View {
        // MARK: Unmatched State
        if !matched {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.black)
                .frame(width: 100, height: 150)
        }
        
        // MARK: Matched State
        else {
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(color)
                    .frame(width: 100, height: 150)
                Text(symbol)
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(symbol: "👻", color: Color.blue, matched: true)
    }
}
