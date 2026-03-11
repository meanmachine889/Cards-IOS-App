//
//  ContentView.swift
//  War
//
//  Created by Yash Bharadwaj on 10/03/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card3"
    @State var enemyCard = "card4"
    @State var scorePlayer: Int = 0
    @State var scoreEnemy: Int = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(enemyCard)
                    Spacer()
                }
                Spacer()
                Button {
                    DealCard()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(Font.headline).padding(.bottom)
                        Text(String(scorePlayer)).font(Font.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(Font.headline).padding(.bottom)
                        Text(String(scoreEnemy)).font(Font.largeTitle)
                    }
                    Spacer()
                }.foregroundStyle(.white)
                Spacer()
            }.padding()
        }
        .padding()
    }
    
    func DealCard(){
        var pc = Int.random(in: 2...14)
        var ec = Int.random(in: 2...14)
        
        playerCard = "card\(pc)"
        enemyCard = "card\(ec)"
        
        if pc > ec{
            self.scorePlayer += 1
        }else if pc < ec{
            self.scoreEnemy += 1
        }
    }
}

#Preview {
    ContentView()
}
