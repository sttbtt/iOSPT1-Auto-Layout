//
//  UIView+Shake.swift
//  PasswordScreenAutoLayout
//
//  Created by Paul Solt on 3/21/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

extension UIView {
    func shake() {
        let view = self
        let propertyAnimator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.2) {
            view.transform = CGAffineTransform(translationX: 10, y: 0)
        }
        propertyAnimator.addAnimations({
            view.transform = CGAffineTransform(translationX: 0, y: 0)
        }, delayFactor: 0.2)
        propertyAnimator.startAnimation()
    }
}
// Provide the shake animation method (hand tuned)
