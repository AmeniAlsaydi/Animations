//
//  AnimationsTabController.swift
//  Animations
//
//  Created by Amy Alsaydi on 1/31/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controller of the tab bar controller
        // in our app we will have to tabs
        
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
    }
    
}
