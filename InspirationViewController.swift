//
//  InspirationViewController.swift
//  The American Refugee
//
//  Created by Gina Joerger on 2/27/17.
//  Copyright © 2017 Joerger & Feigl. All rights reserved.
//

import UIKit

class InspirationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView()
        scrollView.sizeToFit()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor(red: 128.0/255.0, green: 2.0/255.0, blue: 23.0/255.0, alpha: 1.0)
        
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = UIColor(red: 128.0/255.0, green: 2.0/255.0, blue: 23.0/255.0, alpha: 1.0)
        
        
        let inspirationLabel = UILabel()
        inspirationLabel.translatesAutoresizingMaskIntoConstraints = false
        inspirationLabel.setContentCompressionResistancePriority(UILayoutPriority.required, for: .vertical)
        inspirationLabel.numberOfLines = 0
        inspirationLabel.font = UIFont(name: "Menlo-Bold", size: 35)
        inspirationLabel.textColor = UIColor(red: 254.0/255.0, green: 247.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        inspirationLabel.textAlignment = NSTextAlignment.center
        inspirationLabel.attributedText = NSAttributedString(string: "INSPIRATION", attributes: [NSAttributedStringKey.underlineStyle: 2])
        
        let inspoSentenceLabel = UILabel()
        inspoSentenceLabel.translatesAutoresizingMaskIntoConstraints = false
        inspoSentenceLabel.setContentCompressionResistancePriority(UILayoutPriority.required, for: .vertical)
        inspoSentenceLabel.numberOfLines = 0
        inspoSentenceLabel.font = UIFont(name: "Menlo-Regular", size: 15)
        inspoSentenceLabel.textColor = UIColor(red: 254.0/255.0, green: 247.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        inspoSentenceLabel.textAlignment = NSTextAlignment.center
        inspoSentenceLabel.text = "Some of the photos presented in the story were inspired by real-life photos taken previously."
        
        let inspoImage11 = UIImageView()
        inspoImage11.translatesAutoresizingMaskIntoConstraints = false
        inspoImage11.image = #imageLiteral(resourceName: "graffiti1")
        inspoImage11.contentMode = .scaleAspectFit
        inspoImage11.layer.cornerRadius = 8
        inspoImage11.clipsToBounds = true
        
        let inspoImage12 = UIImageView()
        inspoImage12.translatesAutoresizingMaskIntoConstraints = false
        inspoImage12.image = #imageLiteral(resourceName: "graffiti2")
        inspoImage12.contentMode = .scaleAspectFit
        inspoImage12.layer.cornerRadius = 8
        inspoImage12.clipsToBounds = true
        
        let sentenceLabel1 = UILabel()
        sentenceLabel1.translatesAutoresizingMaskIntoConstraints = false
        sentenceLabel1.setContentCompressionResistancePriority(UILayoutPriority.required, for: .vertical)
        sentenceLabel1.numberOfLines = 0
        sentenceLabel1.font = UIFont(name: "Menlo-Regular", size: 12)
        sentenceLabel1.textColor = UIColor(red: 254.0/255.0, green: 247.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        sentenceLabel1.textAlignment = NSTextAlignment.center
        sentenceLabel1.text = "On March 15, 2011, a group of schoolboys sprayed anti-government graffiti on a wall in the Syrian city Daraa. What started as a seemingly innocent act eventually escalated into the full-blown conflict we see today. Over the course of nine days, these boys were arrested, interrogated, and systematically tortured, sparking the Syrian Civil War. Their brave words and criticisms are referenced in the lower right-hand side of the slide."
        
        let inspoImage21 = UIImageView()
        inspoImage21.translatesAutoresizingMaskIntoConstraints = false
        inspoImage21.image = #imageLiteral(resourceName: "protest1")
        inspoImage21.contentMode = .scaleAspectFit
        inspoImage21.layer.cornerRadius = 8
        inspoImage21.clipsToBounds = true
        
        let inspoImage22 = UIImageView()
        inspoImage22.translatesAutoresizingMaskIntoConstraints = false
        inspoImage22.image = #imageLiteral(resourceName: "protest2")
        inspoImage22.contentMode = .scaleAspectFit
        inspoImage22.layer.cornerRadius = 8
        inspoImage22.clipsToBounds = true
        
        let sentenceLabel2 = UILabel()
        sentenceLabel2.translatesAutoresizingMaskIntoConstraints = false
        sentenceLabel2.setContentCompressionResistancePriority(UILayoutPriority.required, for: .vertical)
        sentenceLabel2.numberOfLines = 0
        sentenceLabel2.font = UIFont(name: "Menlo-Regular", size: 12)
        sentenceLabel2.textColor = UIColor(red: 254.0/255.0, green: 247.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        sentenceLabel2.textAlignment = NSTextAlignment.center
        sentenceLabel2.text = "After the harsh, cruel, and improper treatment of the boys, thousands of Syrian citizens showed up to protest a corrupt and unjust government. Protests quickly turned violent and hundreds of people were killed. Cities around the country began similar protests, and this in turn expanded the conflict to a whole new level. In The American Refugee, protests mirror those that took place in Syria."
        
        let inspoImage31 = UIImageView()
        inspoImage31.translatesAutoresizingMaskIntoConstraints = false
        inspoImage31.image = #imageLiteral(resourceName: "syrianboy1")
        inspoImage31.contentMode = .scaleAspectFit
        inspoImage31.layer.cornerRadius = 8
        inspoImage31.clipsToBounds = true

        let inspoImage32 = UIImageView()
        inspoImage32.translatesAutoresizingMaskIntoConstraints = false
        inspoImage32.image = #imageLiteral(resourceName: "syrianboy2")
        inspoImage32.contentMode = .scaleAspectFit
        inspoImage32.layer.cornerRadius = 8
        inspoImage32.clipsToBounds = true
        
        let sentenceLabel3 = UILabel()
        sentenceLabel3.translatesAutoresizingMaskIntoConstraints = false
        sentenceLabel3.setContentCompressionResistancePriority(UILayoutPriority.required, for: .vertical)
        sentenceLabel3.numberOfLines = 0
        sentenceLabel3.font = UIFont(name: "Menlo-Regular", size: 12)
        sentenceLabel3.textColor = UIColor(red: 254.0/255.0, green: 247.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        sentenceLabel3.textAlignment = NSTextAlignment.center
        sentenceLabel3.text = "The Syrian Civil War does not discriminate. Each and every person may be affected. The above slide was inspired by one of Syria’s most famous ‘around-the-world’ photos. The war crimes, bombings, and other atrocities committed in Aleppo have become a casual topic for some, and we have become normalized to the violence we read in the news. This photo served to remind people around the world of the gravity of the situation."
        
        let inspoBackButton = UIButton()
        inspoBackButton.translatesAutoresizingMaskIntoConstraints = false
        inspoBackButton.setTitle("⏎", for: UIControlState.normal)
        inspoBackButton.layer.borderWidth = 2
        inspoBackButton.backgroundColor = UIColor(red: 11.0/255.0, green: 56.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        inspoBackButton.layer.cornerRadius = 8
        inspoBackButton.addTarget(self, action: #selector(inspoBackButtonPressed), for: .touchUpInside)

        view.backgroundColor = UIColor(red: 255.0/255.0, green: 247.0/255.0, blue: 229.0/255.0, alpha: 1.0)
        
        let inspoStackView1 = UIStackView(arrangedSubviews: [inspoImage11, inspoImage12])
        inspoStackView1.axis = .horizontal
        inspoStackView1.translatesAutoresizingMaskIntoConstraints = false
        inspoStackView1.spacing = 8.0
        inspoStackView1.distribution = .fillEqually
        
        let inspoStackView2 = UIStackView(arrangedSubviews: [inspoImage21, inspoImage22])
        inspoStackView2.axis = .horizontal
        inspoStackView2.translatesAutoresizingMaskIntoConstraints = false
        inspoStackView2.spacing = 8.0
        inspoStackView2.distribution = .fillEqually
        
        let inspoStackView3 = UIStackView(arrangedSubviews: [inspoImage31, inspoImage32])
        inspoStackView3.axis = .horizontal
        inspoStackView3.translatesAutoresizingMaskIntoConstraints = false
        inspoStackView3.spacing = 8.0
        inspoStackView3.distribution = .fillEqually
        
        let inspoStackView4 = UIStackView(arrangedSubviews: [inspirationLabel, inspoSentenceLabel, inspoStackView1, sentenceLabel1, inspoStackView2, sentenceLabel2, inspoStackView3, sentenceLabel3])
        inspoStackView4.axis = .vertical
        inspoStackView4.translatesAutoresizingMaskIntoConstraints = false
        inspoStackView4.spacing = 32.0
        inspoStackView4.distribution = .equalSpacing
        
        view.addSubview(scrollView)
        view.addSubview(inspoBackButton)
        scrollView.addSubview(contentView)
        contentView.addSubview(inspoStackView4)
        
        let views = [
            "scrollView": scrollView,
            "inspoBackButton": inspoBackButton,
            "contentView": contentView,
            "inspoStackView4": inspoStackView4
        ]
        
        inspoImage11.heightAnchor.constraint(equalTo: inspoImage11.widthAnchor, multiplier: 0.56).isActive = true
        inspoImage12.heightAnchor.constraint(equalTo: inspoImage12.widthAnchor, multiplier: 0.56).isActive = true
        inspoImage21.heightAnchor.constraint(equalTo: inspoImage21.widthAnchor, multiplier: 0.56).isActive = true
        inspoImage22.heightAnchor.constraint(equalTo: inspoImage22.widthAnchor, multiplier: 0.56).isActive = true
        inspoImage31.heightAnchor.constraint(equalTo: inspoImage31.widthAnchor, multiplier: 0.56).isActive = true
        inspoImage32.heightAnchor.constraint(equalTo: inspoImage32.widthAnchor, multiplier: 0.56).isActive = true
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[scrollView]|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[scrollView]|", options: [], metrics: nil, views: views))
        
        contentView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[contentView]|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[contentView]|", options: [], metrics: nil, views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16.0-[inspoStackView4]-16.0-|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8.0-[inspoStackView4]-8.0-|", options: [], metrics: nil, views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8.0-[inspoBackButton]", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8.0-[inspoBackButton]", options: [], metrics: nil, views: views))
    }
    
    @objc func inspoBackButtonPressed() {
        let _ = navigationController?.popViewController(animated: true)
    }
}
