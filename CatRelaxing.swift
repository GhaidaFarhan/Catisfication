//
//  CatRelaxing.swift
//  App6
//
//  Created by Ghaida Farhan on 5/8/24.
//

import SwiftUI

struct CatRelaxing: View {
    @State private var isPetting = false
    @State private var isMassage = false
    @State private var isTouching = false
    @State private var isWiggling = false
    let hapticManager = HapticManager.instance
   
    let generator = UIImpactFeedbackGenerator(style: .heavy)
   

    
    var body: some View {
        
        ZStack {
            
            Color(.ourPalete)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("""
                     Hi human am not feeling Purrfect!
                            Can you please help me :( ?
                     """)
                .font(.custom("Sparky Stones Regular", size: 24))
                .padding()
                
                HStack(spacing: 100) {
                    Button(action: {
                        isMassage.toggle()
                        isPetting = false
                    }) {
                        Label("Massage", systemImage: "")
                            .padding()
                            .foregroundColor(isMassage ? Color.white : Color.black)
                            .background(isMassage ? Color.black : Color.white)
                            .cornerRadius(12)
                    }
                    
                    Button(action: {
                        isPetting.toggle()
                        isMassage = false
                    }) {
                        Label("Petting", systemImage: "hand.tap.fill")
                            .padding()
                            .foregroundColor(isPetting ? Color.white : Color.black)
                            .background(isPetting ? Color.black : Color.white)
                            .cornerRadius(12)
                    }
                }
                
                Image("StressedCat")
                    .resizable()
                    .frame(width: 370, height: 450, alignment: .bottom)
                    .opacity(isTouching ? 0.5 : 1.0)
                    .gesture(LongPressGesture(maximumDistance: 0)
                             
                             
                        .onChanged { _ in
                            isTouching = true
                            generator.impactOccurred()
                            hapticManager.impact(style: .light)
                            if isMassage {
                                playSound(sound: "KittenMeow", type: "mp3")
                                
                            } else if isPetting {
                                playSound(sound: "cat-purr-sound", type: "mp3")
                                
                            }
                            isWiggling = true
                            playingHaptic()
                        }
                        .onEnded { _ in
                            stopHaptic()
                            isTouching = false
                            generator.impactOccurred()
                            stopAllSounds()
                           
                            isWiggling = false
                        }
                            
                    )
                    .animation(isWiggling ? AnimationUtils.wiggleAnimation(interval: 0.5, variance: 0.1) : .default, value: isWiggling)

                    .wiggling(isWiggling: $isWiggling)
            }
//            .onDisappear{
//                stopHaptic()
//                
//            }
        }
}
   

func stopAllSounds() {
    stopSound(sound: "KittenMeow", type: "mp3")
    stopSound(sound: "cat-purr-sound", type: "mp3")
}
}
#Preview {
    CatRelaxing()
}
