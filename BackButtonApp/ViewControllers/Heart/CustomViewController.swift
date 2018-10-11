//
//  CustomViewController.swift
//  BackButtonApp
//
//  Created by piatkovskyi on 10/11/18.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Creating button at CustomViewController viewDidLoad method
        self.createBackButton()
    }
    
    private func createBackButton() {
        //Init UIButton of system type
        let backButton = UIButton(type: .system)
        //Setting up image
        backButton.setImage(UIImage(named: "backImage"), for: .normal)
        //Setting up title and font of title
        backButton.setTitle("Back", for: .normal)
        backButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        //Setting up image and title insets (May differ with your values)
        backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
        backButton.titleEdgeInsets = UIEdgeInsets(top: -1, left: -7, bottom: 0, right: 0)
        //Adding action to button (popViewController for me)
        backButton.addTarget(self, action: #selector(navBarBackAction), for: .touchUpInside)
        //Creating UIBarButtonItem with button view as foundation and setting style
        let navigationItem = UIBarButtonItem(customView: backButton)
        navigationItem.style = .done
        //Assigning navigation item value to CustomViewController navigationItem
        self.navigationItem.leftBarButtonItem = navigationItem
    }
    
    @objc private func navBarBackAction() {
        //Back action (May be any action)
        self.navigationController?.popViewController(animated: true)
    }
}
