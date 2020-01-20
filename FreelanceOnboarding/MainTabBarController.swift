//
//  MainTabBarController.swift
//  FreelanceOnboarding
//
//  Created by Thomas Warner on 1/16/20.
//  Copyright © 2020 Thomas Warner. All rights reserved.
//

import UIKit
import TinyConstraints

class MainTabBarController: UITabBarController {

    let redVC = UIViewController()
    let blueVC = UIViewController()
    let greenVC = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        
        redVC.tabBarItem.title = "Gray"
        redVC.view.backgroundColor = .lightGray
        redVC.view.addSubview(purpleView)
        purpleView.centerInSuperview()
        purpleView.width(400)
        purpleView.height(200)
        
        blueVC.view.backgroundColor = .magenta
        blueVC.tabBarItem.title = "Magenta"
        greenVC.view.backgroundColor = .cyan
        greenVC.tabBarItem.title = "Cyan"
        viewControllers = [redVC, blueVC, greenVC]
        // Do any additional setup after loading the view.
    }

}
