//
//  Forest.swift
//  App6
//
//  Created by Ghaida Farhan on 5/6/24.
//

import SwiftUI

struct Forest: View {
    @State private var isAnimating = false
    @State private var xOffset: CGFloat = -100
    @State private var direction: CGFloat = 1
    
    var body: some View {
        ZStack{
            HStack{
                Image("Forest")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .offset(x: xOffset)
                    .animation(Animation.linear(duration: 35).repeatForever(autoreverses: true))
                
            }
        }
        .onAppear{
            isAnimating.toggle()
            xOffset = 0.1
            direction = 1
            playSound(sound: "windBlowing", type: "mp3")
            hapticManager.impact(style: .rigid)
            playingHaptic()
            
        }
        .onDisappear{
            stopSound(sound: "windBlowing", type: "mp3")
            stopHaptic()
        }
    }
}
#Preview {
    Forest()
}
