//
//  HapticManager.swift
//  App6
//
//  Created by Ghaida Farhan on 5/15/24.
//

import SwiftUI 
var hapticTimer: Timer?
let hapticManager = HapticManager.instance
class HapticManager {
    static let instance = HapticManager()
    private init() {}
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

func playingHaptic() {
    hapticTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
        hapticManager.impact(style: .heavy)
    }
}

func stopHaptic() {
    hapticTimer?.invalidate()
    hapticTimer = nil
}
