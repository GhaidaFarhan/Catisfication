//
//  Rain.swift
//  App6
//
//  Created by Ghaida Farhan on 5/6/24.
//

import SwiftUI

struct Rain: View {
    @State private var isAnimating = false
    @State private var xOffset: CGFloat = -100
    @State private var direction: CGFloat = 1
    @State private var isShowing = false
    let hapticManager = HapticManager.instance
    let generator = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        ZStack{
            HStack{
                Image("RainBackground")
                    .resizable()
                    .frame(width: 900,height: 900)
                    .scaledToFill()
                    .ignoresSafeArea()
                    .offset(x: xOffset)
                    .animation(Animation.linear(duration: 35).repeatForever(autoreverses: true))
                
            }.onAppear{
                isAnimating.toggle()
                xOffset = 0.1
                direction = 1
            }
            
            Image("lightning")
                .resizable()
                .opacity(isShowing ? 1 : 0)
                .animation(Animation.linear(duration: 0.2).repeatForever(autoreverses: true))
                .onAppear {
                    isShowing = true
                }
            Image("lightning")
                .resizable()
                .opacity(isShowing ? 1 : 0)
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
                .onAppear {
                    isShowing = true
                }
            Image("Raining")
                           .resizable()
                           .frame(width: 1000, height: 1000)
                           .offset(y: isAnimating ? 50 : -50)
                           .animation(Animation.linear(duration: 9)
                            .repeatForever(autoreverses: false))
                           .onAppear {
                               isAnimating = true
                           }
                       
                   }
                   .onAppear {
                       isAnimating.toggle()
                       xOffset = 0.1
                       direction = 1
                       playSound(sound: "RainSound", type: "mp3")
                       generator.impactOccurred()
                       hapticManager.impact(style: .soft)
                       playingHaptic()
                   }
                   .onDisappear{
                       stopSound(sound: "RainSound", type: "mp3")
                       stopHaptic()
                   }
        
        }

        
    }


#Preview {
    Rain()
}
