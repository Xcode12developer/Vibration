//
//  Haptics.swift
//  Vibration
//
//  Created by Mohamad Mortada on 11/6/20.
//

import UIKit

final class Haptics {
    static let shared  = Haptics()
    
    private init() {}
    

    
    public func vibrate(for type:UINotificationFeedbackGenerator.FeedbackType) {
        DispatchQueue.main.async {
            
        
        let notificationGenerator = UINotificationFeedbackGenerator()
        notificationGenerator.prepare()
        notificationGenerator.notificationOccurred(type)
        }
    }
}
