//
//  intermediateCustomViewController.swift
//  BackButtonApp
//
//  Created by piatkovskyi on 10/11/18.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

class intermediateCustomViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.performSegue(withIdentifier: SegueIdentifiers.customSegue, sender: nil)
    }
}
