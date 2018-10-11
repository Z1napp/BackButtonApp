//
//  ViewController.swift
//  BackButtonApp
//
//  Created by piatkovskyi on 10/11/18.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let yourBackImage = UIImage(named: "backImage")
        self.navigationBar.backIndicatorImage = yourBackImage
        self.navigationBar.backIndicatorTransitionMaskImage = yourBackImage
    }
}
