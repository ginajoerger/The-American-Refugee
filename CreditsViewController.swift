//
//  CreditsViewController.swift
//  The American Refugee
//
//  Created by Gina Joerger on 2/27/17.
//  Copyright © 2017 Joerger & Feigl. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let creditsImageView = UIImageView()
        creditsImageView.translatesAutoresizingMaskIntoConstraints = false
        creditsImageView.backgroundColor = UIColor.black
        creditsImageView.image = #imageLiteral(resourceName: "CreditsImage")
        
        let creditsBackButton = UIButton()
        creditsBackButton.translatesAutoresizingMaskIntoConstraints = false
        creditsBackButton.setTitle("⏎", for: UIControlState.normal)
        creditsBackButton.layer.borderWidth = 2
        creditsBackButton.backgroundColor = UIColor(red: 128.0/255.0, green: 2.0/255.0, blue: 23.0/255.0, alpha: 0.9)
        creditsBackButton.layer.cornerRadius = 8
        creditsBackButton.addTarget(self, action: #selector(creditsBackButtonPressed), for: .touchUpInside)
        
        view.backgroundColor = UIColor(red: 255.0/255.0, green: 247.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        view.addSubview(creditsImageView)
        view.addSubview(creditsBackButton)
        
        let views = [
            "creditsImageView": creditsImageView,
            "creditsBackButton": creditsBackButton
        ]
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[creditsImageView]|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[creditsImageView]|", options: [], metrics: nil, views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8.0-[creditsBackButton]", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8.0-[creditsBackButton]", options: [], metrics: nil, views: views))
    }
    
    @objc func creditsBackButtonPressed() {
        let _ = navigationController?.popViewController(animated: true)
    }
}
