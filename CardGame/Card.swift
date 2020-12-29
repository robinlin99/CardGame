//
//  Card.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-28.
//

import SwiftUI

struct CardView: View {
    @ObservedObject var card: CardObj

    var body: some View {
        // MARK: Facedown
        if !card.faceUp {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.black)
                .frame(width: 100, height: 150)
        }
        
        // MARK: Faceup
        else {
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(card.color)
                    .frame(width: 100, height: 150)
                Text(card.symbol).font(.system(size: 50))
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: CardObj(face: true, m: false, sym: "🍔" , c: Color.blue))
    }
}
