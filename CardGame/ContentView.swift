//
//  ContentView.swift
//  CardGame
//
//  Created by Robin Lin on 2020-12-28.
//

import SwiftUI

struct ContentView: View {
    @State var score: Int = 0
    @State var s: Bool = false
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Text("Score: \(score)").fontWeight(.bold).font(.system(size: 40))
                HStack {
                    VStack {
                        Card(symbol: "👻", color: Color.blue, matched: true).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "😃", color: Color.red, matched: true).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
                        }
                    }
                    VStack {
                        Card(symbol: "👻", color: Color.blue, matched: true).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "😃", color: Color.red, matched: true).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
                        }
                    }
                    VStack {
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: true).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
                        }
                        Card(symbol: "👻", color: Color.blue, matched: false).onTapGesture {
                            print("Tapped!")
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
