//
//  ContentView.swift
//  UITest
//
//  Created by Ali Karababa on 10.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card2"
    @State private var cpuCard = "card2"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack() {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    // MARK: - Update the cards
                    self.playerCard = "card\(playerRand)"
                    self.cpuCard = "card\(cpuRand)"
                    // MARK: Update the scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if playerRand == cpuRand{
                        return
                    }else {
                        cpuScore += 1
                    }
                }) {
                    Image("dealbutton")
                }
                Spacer()
                HStack() {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
