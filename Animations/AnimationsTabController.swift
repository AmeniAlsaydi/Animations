//
//  AnimationsTabController.swift
//  Animations
//
//  Created by Amy Alsaydi on 1/31/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    
    private lazy var sampleAnimationVC: SampleAnimationsController = {
        let vc = SampleAnimationsController()
        vc.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return vc
    }()
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
        let vc = ConstraintsAnimationController()
        vc.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controller of the tab bar controller
        // in our app we will have to tabs
        
        viewControllers = [sampleAnimationVC, constraintsAnimationVC]
    }
    
}
