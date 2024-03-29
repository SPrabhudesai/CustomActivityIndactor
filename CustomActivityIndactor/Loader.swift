//
//  Loader.swift
//  GenericDemo
//
//  Created by Shailesh Prabhudesai on 24/10/19.
//  Copyright © 2019 Shailesh Prabhudesai. All rights reserved.
//
import UIKit

var vSpinner:UIView?

extension UIViewController{
    func showSpinner(onView:UIView) {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .large)
        ai.startAnimating()
        ai.color = .purple
        ai.center = spinnerView.center
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }
        vSpinner = spinnerView
    }
    
    
    func hideSpinner() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
        }
    }
}
