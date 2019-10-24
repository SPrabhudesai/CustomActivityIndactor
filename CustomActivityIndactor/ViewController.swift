//
//  ViewController.swift
//  CustomActivityIndactor
//
//  Created by Shailesh Prabhudesai on 24/10/19.
//  Copyright © 2019 Shailesh Prabhudesai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showSpinner(onView: view)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            self.hideSpinner()
        }
     }
}

