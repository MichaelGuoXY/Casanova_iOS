//
//  UIView+Animation.swift
//  Casanova
//
//  Created by Xiaoyu Guo on 8/11/17.
//  Copyright © 2017 Xiaoyu Guo. All rights reserved.
//

import UIKit

// MARK: - UIView extension
extension UIView {
    /**
     Fade in a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeIn(withDuration duration: TimeInterval = 1.0, withCompletionBlock block: ((Bool) -> Swift.Void)? = nil) {
        Utils.runOnMainThread {
            self.isHidden = false
            self.alpha = 0.0
            UIView.animate(withDuration: duration, animations: {
                self.alpha = 1.0
            }, completion: { success in
                block?(success)
            })
        }
    }
    
    /**
     Fade out a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeOut(withDuration duration: TimeInterval = 1.0, withCompletionBlock block: ((Bool) -> Swift.Void)? = nil) {
        Utils.runOnMainThread {
            UIView.animate(withDuration: duration, animations: {
                self.alpha = 0.0
            }, completion: { success in
                self.isHidden = true
                block?(success)
            })
        }
    }
    
    
    func blink(withDuration duration: TimeInterval = 2.0, withDelay delay: TimeInterval = 0.0, withCOmpletionBlock block: ((Bool) -> Swift.Void)? = nil) {
        Utils.runOnMainThread {
            self.alpha = 1.0
            UIView.animate(withDuration: duration, delay: delay, options: [.curveEaseInOut, .repeat, .autoreverse, .allowUserInteraction], animations: {
                self.alpha = 0.6
                self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }, completion: { success in
                block?(success)
            })
        }
    }
    
    func stopBlink() {
        Utils.runOnMainThread {
            self.alpha = 1.0
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.layer.removeAllAnimations()
        }
    }
    
    func startRotating(duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }
    }
}
