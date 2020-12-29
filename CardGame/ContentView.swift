//
//  ContentView.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-28.
//

import SwiftUI

struct ContentView: View {
    @State var info: Bool = false
    @ObservedObject var cardgame = CardLogic(first: -1, second: -1, firstChosen: false, secondChosen: false, symbols: (["😃", "🧘🏻‍♂️", "🌍", "🍞", "🚗", "📞"] as NSArray).shuffled() as! [String], colors: [Color.blue, Color.red, Color.green, Color.purple, Color.gray, Color.orange])

    
    var body: some View {
        ZStack {
            Button(action: {
                    info = true
            }) {
                Text("❓").padding().font(.system(size: 40))
            }.position(x: 35, y: 100)
            .alert(isPresented: self.$info) {
                Alert(title: Text("Game Instructions"),
                      message: Text("Matched the Emoji Cards! It's that simple. 💯💯💯"),
                      dismissButton: .default(Text("Start Playing!")))
            }
            
            Button(action: {
                cardgame.reset(first: -1, second: -1, firstChosen: false, secondChosen: false, symbols: (["😃", "🧘🏻‍♂️", "🌍", "🍞", "🚗", "📞"] as NSArray).shuffled() as! [String], colors: [Color.blue, Color.red, Color.green, Color.purple, Color.gray, Color.orange])
            }) {
                Text("🔄").padding().font(.system(size: 40))
            }.position(x: 80, y: 100)
            
            VStack {
                Color.white.ignoresSafeArea()
                Text("Score: \(cardgame.score)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                VStack {
                    HStack {
                        VStack {
                            CardView(card: cardgame.cardState[0]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 0)
                            }
                            CardView(card: cardgame.cardState[1]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 1)
                            }
                            CardView(card: cardgame.cardState[2]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 2)
                            }
                            CardView(card: cardgame.cardState[3]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 3)
                            }
                        }
                        VStack {
                            CardView(card: cardgame.cardState[4]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 4)
                            }
                            CardView(card: cardgame.cardState[5]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 5)
                            }
                            CardView(card: cardgame.cardState[6]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 6)
                            }
                            CardView(card: cardgame.cardState[7]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 7)
                            }
                        }
                        VStack {
                            CardView(card: cardgame.cardState[8]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 8)
                            }
                            CardView(card: cardgame.cardState[9]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 9)
                            }
                            CardView(card: cardgame.cardState[10]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 10)
                            }
                            CardView(card: cardgame.cardState[11]).onTapGesture {
                                print("Tapped!")
                                cardgame.chooseCard(index: 11)
                            }
                        }
                    }
                }
                
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
