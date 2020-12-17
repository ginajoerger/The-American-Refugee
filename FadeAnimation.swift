//
//  FadeAnimation.swift
//  The American Refugee
//
//  Created by Ryan Poolos on 3/21/17.
//  Copyright © 2017 Joerger & Feigl. All rights reserved.
//

import UIKit

class FadeAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.35
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let fromView = transitionContext.view(forKey: .from), let toView = transitionContext.view(forKey: .to) else {
            transitionContext.completeTransition(false)
            return
        }
        
        toView.frame = fromView.frame
        
        transitionContext.containerView.addSubview(toView)
        
        toView.alpha = 0.0
        
        let duration = transitionDuration(using: transitionContext)
        UIView.animate(withDuration: duration, animations: { 
            toView.alpha = 1.0
        }) { (finished) in
            fromView.removeFromSuperview()
            transitionContext.completeTransition(finished)
        }
    }
    
}
