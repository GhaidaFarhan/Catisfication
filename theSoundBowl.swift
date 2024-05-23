
import SwiftUI
import AVFoundation
import SDWebImageSwiftUI

struct MeditationCat: View {
    @State var isPlaying: Bool = false
    @State private var singingBowl: AVAudioPlayer?
    @Environment(\.colorScheme) var colorScheme
  
    
    var body: some View {
        Button(action: {
            if isPlaying {
                AudioPlayer.shared.stopBackgroundSound()           } else {
                    AudioPlayer.shared.startBackgroundLoop(sound: "Tibetan-bowl-meditation-music", type: "mp3")
            }
            isPlaying.toggle()
        }) {
            ZStack {
                Color.ourPalete
                    .ignoresSafeArea()
                
                VStack {
                    if isPlaying {
                        AnimatedImage(name: "animatedSoundBowlCat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 520, height: 530)
                        Text("Breathe in for 4 seconds, hold your breath for 7 seconds, and exhale for 8 seconds.")
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                            .font(.custom("Sparky Stones Regular", size: 22))
                            .padding(23)
                            .background(.ultraThinMaterial)
                            .cornerRadius(40)
                            .padding(35)                    } else {
                        Image("staticSoundBowlCat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 520, height: 530)
                        
                        Text("Ground yourself, relax, and give me a tap when you're ready to meditate.")
                                    .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                            .font(.custom("Sparky Stones Regular", size: 22))
                            .padding(23)
                            .background(.ultraThinMaterial)
                            .cornerRadius(45)
                            .padding(35)
                    }
                }
            }
        }
    }


    func playAudio() {
        guard let path = Bundle.main.path(forResource: "Tibetan-bowl-meditation-music", ofType: "mp3") else {
            print("Audio file not found.")
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            singingBowl = try AVAudioPlayer(contentsOf: url)
            singingBowl?.play()
                                    
            
        } catch {
            print("Error playing the audio file: \(error.localizedDescription)")
            singingBowl = nil
        }
    }
    
    func stopAudio() {
        singingBowl?.stop()
                        
    }
    
}

#Preview {
    MeditationCat()
}
