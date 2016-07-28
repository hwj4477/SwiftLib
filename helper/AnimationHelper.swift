//
//  AnimationHelper.swift
//
//  Created by wjhong on 2016. 4. 20..
//  Copyright © 2016년 wjhong. All rights reserved.
//

import UIKit

class AnimationHelper {

    static func slideLeftViewTransition(target: UIView, duration: CFTimeInterval = 0.5) {
        
        let animation = CATransition()
        animation.duration = duration
        animation.type = kCATransitionPush
        animation.subtype = kCATransitionFromRight
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        target.layer.addAnimation(animation, forKey: "slideViewTransition")
    }
    
    static func slideRightViewTransition(target: UIView, duration: CFTimeInterval = 0.5) {
        
        let animation = CATransition()
        animation.duration = duration
        animation.type = kCATransitionPush
        animation.subtype = kCATransitionFromLeft
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        target.layer.addAnimation(animation, forKey: "slideViewTransition")
    }
}
