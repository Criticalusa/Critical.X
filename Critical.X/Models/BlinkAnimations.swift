//
//  BlinkAnimations.swift
//  Critical.X
//
//  Created by Jadie Barringer III on 7/20/18.
//  Copyright © 2018 Jadie Barringer III. All rights reserved.
//

import UIKit
import Foundation


// UIButton blink, set duration and how long it takes to blink
/* yourButton.blink() // infinite blink effect with the default duration of 1 second

yourButton.blink(enabled:false) // stop the animation

yourButton.blink(duration: 2.0) // slowly the animation to 2 seconds

yourButton.blink(stopAfter:5.0) // the animation stops after 5 seconds.
Typical uses:

yourButton.blink(duration: 1.5, stopAfter:10.0)
// your code..
yourButton.blink()
// other code..
yourButton.blink(enabled:false)
 */
extension UIButton {
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        return self.bounds.contains(point) ? self : nil
    }
    func blink(enabled: Bool = true, duration: CFTimeInterval = 1.0, stopAfter: CFTimeInterval = 0.0 ) {
        enabled ? (UIView.animate(withDuration: duration, //Time duration you want,
            delay: 0.0,
            options: [.curveEaseInOut, .autoreverse, .repeat],
            animations: { [weak self] in self?.alpha = 0.0 },
            completion: { [weak self] _ in self?.alpha = 1.0 })) : self.layer.removeAllAnimations()
        if !stopAfter.isEqual(to: 0.0) && enabled {
            DispatchQueue.main.asyncAfter(deadline: .now() + stopAfter) { [weak self] in
                self?.layer.removeAllAnimations()
            }
        }
    }
}

extension UILabel {
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        return self.bounds.contains(point) ? self : nil
    }
    func blink(enabled: Bool = true, duration: CFTimeInterval = 1.0, stopAfter: CFTimeInterval = 0.0 ) {
        enabled ? (UIView.animate(withDuration: duration, //Time duration you want,
            delay: 0.0,
            options: [.curveEaseInOut, .autoreverse, .repeat],
            animations: { [weak self] in self?.alpha = 0.0 },
            completion: { [weak self] _ in self?.alpha = 1.0 })) : self.layer.removeAllAnimations()
        if !stopAfter.isEqual(to: 0.0) && enabled {
            DispatchQueue.main.asyncAfter(deadline: .now() + stopAfter) { [weak self] in
                self?.layer.removeAllAnimations()
            }
        }
    }
}

//Call label.blinkNonStop()
extension UILabel{
    func blinkNonStrop() {
        self.alpha = 0.2
        UILabel.animate(withDuration: 1, delay: 0.0, options: [.curveLinear, .repeat, .autoreverse], animations: {self.alpha = 1.0}, completion: nil)
    }
}
