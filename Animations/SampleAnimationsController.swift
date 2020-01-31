//
//  SampleAnimationsController.swift
//  Animations
//
//  Created by Amy Alsaydi on 1/31/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationView = SampleAnimationView()

    override func loadView() {
        view = sampleAnimationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scaleAnimation()
        // pulsatingAnimation()
        
    }
    
    // any transform value of 1.0 represents the identity of the view
    
    private func scaleAnimation() {
        UIView.animateKeyframes(withDuration: 0.3, delay: 0.0, options: [], animations: {
            self.sampleAnimationView.pursuitLogo.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
            self.sampleAnimationView.pursuitLogo.alpha = 0
        }) { (done) in // done is a variable
            // gets called after intial animation gets called
            UIView.animate(withDuration: 0.3) {
                 self.sampleAnimationView.swiftLogo.isHidden = false
                self.sampleAnimationView.swiftLogo.layer.cornerRadius = self.sampleAnimationView.swiftLogo.bounds.size.width/2
            }
        }
    }
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            // animations block - creeate animation
            self.sampleAnimationView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            // code to be executed after animation is complete
            // options - you can reset view's values (return it to intiail state)
            // options - create another animation
            
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationView.pursuitLogo.transform = CGAffineTransform.identity
            }
            
            // NB: if you want to go beyond creatingvan animation in this completeion handler the better choice would be animateKEyFrame() // DO NOT HAVE A CHAIN OF COMPLETION HANDLERS
        }
    }
    

}
