//
//  ContentView.swift
//  War Card Game
//
//  Created by Yazdan Haider on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card7"
    @State var cpucard = "card13"
    
    @State var playscore = 0
    @State var cpuscore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playscore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                Spacer()
                
            }
            
            
        }
    }
    
    func deal(){
        // Randomize the player card
        var playercardvalue = Int.random(in: 2...14)
        playercard = "card" + String(playercardvalue)
        
        
        // Randomize the cpu card
        var cpucardvalue = Int.random(in: 2...14)
        cpucard = "card" + String(cpucardvalue)
        
        // Update the scores
        if playercardvalue > cpucardvalue {
            // Add 1 to player score
            playscore += 1
        }
        else if cpucardvalue > playercardvalue {
            // Add 1 to cpu score
            cpuscore += 1
        }
        else {
            // Tie
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
