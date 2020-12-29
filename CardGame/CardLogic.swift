//
//  CardLogic.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-28.
//

import Foundation
import SwiftUI

class CardLogic : ObservableObject {
    var firstCard: Int
    var secondCard: Int
    var firstChosenCard: Bool
    var secondChosenCard: Bool
    var symb : Array<String>
    var col : Array<Color>
    @Published var score : Int
    @Published var cardState = [CardObj]()
    init(first: Int, second: Int, firstChosen: Bool, secondChosen: Bool, symbols: Array<String>, colors: Array<Color>) {
        firstCard = first
        secondCard = second
        firstChosenCard = firstChosen
        secondChosenCard = secondChosen
        symb = symbols
        col = colors
        score = 0
        for i in 0...5 {
            cardState.append(CardObj(face: false, m: false, sym: symb[i], c: col[i]))
            cardState.append(CardObj(face: false, m: false, sym: symb[i], c: col[i]))
        }
        cardState = (cardState as NSArray).shuffled() as! [CardObj]
    }
    
    func reset(first: Int, second: Int, firstChosen: Bool, secondChosen: Bool, symbols: Array<String>, colors: Array<Color>) {
        firstCard = first
        secondCard = second
        firstChosenCard = firstChosen
        secondChosenCard = secondChosen
        symb = symbols
        col = colors
        score = 0
        cardState = [CardObj]()
        for i in 0...5 {
            cardState.append(CardObj(face: false, m: false, sym: symb[i], c: col[i]))
            cardState.append(CardObj(face: false, m: false, sym: symb[i], c: col[i]))
        }
        cardState = (cardState as NSArray).shuffled() as! [CardObj]
    }
    
    func chooseCard(index: Int) {
        // Testing if cards flip upon selection
        // cardState[index].faceUp = !cardState[index].faceUp
        
        // Only select if not matched
        if !cardState[index].matched && !cardState[index].faceUp {
            print("CARD IS NOT MATCHED")
            // MARK: No Card Chosen
            if !firstChosenCard && !secondChosenCard {
                print("NO CARD CHOSEN")
                firstChosenCard = true
                firstCard = index
                cardState[firstCard].faceUp = true
            }
            
            // MARK: First Card Chosen
            else if firstChosenCard && !secondChosenCard {
                secondChosenCard = true
                secondCard = index
                cardState[secondCard].faceUp = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    if self.cardState[self.firstCard].symbol == self.cardState[self.secondCard].symbol {
                        self.cardState[self.firstCard].matched = true
                        self.cardState[self.secondCard].matched = true
                        self.firstChosenCard = false
                        self.secondChosenCard = false
                        self.firstCard = -1
                        self.secondCard = -1
                        self.score += 1
                    }
                    else {
                        self.cardState[self.firstCard].matched = false
                        self.cardState[self.secondCard].matched = false
                        self.cardState[self.firstCard].faceUp = false
                        self.cardState[self.secondCard].faceUp = false
                        self.firstChosenCard = false
                        self.secondChosenCard = false
                        self.firstCard = -1
                        self.secondCard = -1
                    }
                    
                }
            }
        }
    }
}
