//
//  SoundManager.swift
//  CatApp
//
//  Created by Ghaida Farhan on 4/28/24.
//

import Foundation
import AVFoundation

// AV stand for audio visual
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()

            
            print("Sound is playing")
            
            
        } catch {
            print ("Sound cannot play , \(error.localizedDescription)")
        }
        
        
    }
}

func stopSound(sound: String, type: String){
   
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.stop()
            
            print("Sound stopped ")
            
            
        } catch {
            print ("Sound cannot stop , \(error.localizedDescription)")
        }
        
        
    }
}
