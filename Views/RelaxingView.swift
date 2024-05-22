//
//  RelaxingView.swift
//  App6
//
//  Created by Ghaida Farhan on 5/1/24.
//

import SwiftUI

struct RelaxingView: View {
    @State private var isAnimating = false
    var body: some View {
        ZStack{
            Image ("Sea")
                .resizable()
                .frame(width:900,height: 900)
                .ignoresSafeArea()
            HStack{
                Image("RightClouds")
                    .resizable()
                    .frame(width: 800, height: 700)
                    .offset(x: isAnimating ? -700 : 700)
                    .animation(Animation.linear(duration: 100).repeatForever(autoreverses: false))
                Image("LeftClouds")
                    .resizable()
                    .frame(width: 900, height: 600)
                    .offset(x: isAnimating ? 300 : -200)
                    .animation(Animation.linear(duration: 100).repeatForever(autoreverses: false))
                
            }
            
            .onAppear{
                isAnimating.toggle()
                playSound(sound: "Ocean", type: "mp3")
                hapticManager.impact(style: .soft)
                playingHaptic()
                
            }
            Image("birds")
                .resizable()
                .frame(width: 1000, height: 900)
                .offset(x: isAnimating ? 500 : -200)
                .animation(Animation.linear(duration: 4))
            
        }
        .onDisappear{
            stopSound(sound: "Ocean", type: "mp3")
                stopHaptic()
        }
    }
}
#Preview {
    RelaxingView()
}
