//
//  ShakeView.swift
//  Anxiety
//
//  Created by Lucídio Andrade Barbosa de Souza on 21/06/19.
//  Copyright © 2019 Joel Menezes Hamon. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func shake(duration: CFTimeInterval) {
        let translation = CAKeyframeAnimation(keyPath: "transform.translation.x");
        translation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        translation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0]
        
        let rotation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        rotation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0].map {
            ( degrees: Double) -> Double in
            let radians: Double = (M_PI * degrees) / 180.0
            return radians
        }
        
        let shakeGroup: CAAnimationGroup = CAAnimationGroup()
        shakeGroup.animations = [translation, rotation]
        shakeGroup.duration = duration
        shakeGroup.repeatCount = .infinity
        self.layer.add(shakeGroup, forKey: "shakeIt")
    }
}
