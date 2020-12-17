//
//  SceneViewController.swift
//  The American Refugee
//
//  Created by G    2017 Joerger & Feigl. All rights reserved.
//

import UIKit

class SceneViewController: UIViewController, UINavigationControllerDelegate {
    let scene: Scene
    
    init(scene: Scene) {
        self.scene = scene
        super.init(nibName: nil, bundle: nil)
        
        UserDefaults.standard.set(scene.sceneID, forKey: "CurrentScene")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.scene = Scene(dictionary: [:])
        super.init(coder: aDecoder)
    }
    
    let label = UILabel()
    let labelView = UIView()
    
    override func didMove(toParentViewController parent: UIViewController?) {
        if let navigationController = parent as? UINavigationController {
            navigationController.delegate = self
            
            if let rootViewController = navigationController.viewControllers.first {
                navigationController.viewControllers = [rootViewController, self]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.black
        imageView.image = UIImage(named: scene.imageName)
        
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.backgroundColor = UIColor(red: 255.0/255.0, green: 247.0/255.0, blue: 229.0/255.0, alpha: 0.7)
        labelView.layer.cornerRadius = 8
        
        
        let currentTextID = UserDefaults.standard.integer(forKey: "CurrentTextID")
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        if scene.textInfo.count > currentTextID {
            label.text = scene.textInfo[currentTextID]
        }
        label.font = UIFont(name: "Menlo-Regular", size: 15)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        
        let buttonOne = UIButton()
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.setTitle("A", for: UIControlState.normal)
        buttonOne.backgroundColor = UIColor(red: 11.0/255.0, green: 56.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        buttonOne.layer.cornerRadius = 8
        buttonOne.addTarget(self, action: #selector(buttonAPressed), for: .touchUpInside)
        
        let buttonTwo = UIButton()
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.setTitle("B", for: UIControlState.normal)
        buttonTwo.backgroundColor = UIColor(red: 128.0/255.0, green: 2.0/255.0, blue: 23.0/255.0, alpha: 1.0)
        buttonTwo.layer.cornerRadius = 8
        buttonTwo.addTarget(self, action: #selector(buttonBPressed), for: .touchUpInside)
        
        
        view.addSubview(imageView)
        view.addSubview(labelView)
        labelView.addSubview(label)
        
        let views = [
            "image": imageView,
            "labelView": labelView,
            "label": label,
            "buttonOne": buttonOne,
            "buttonTwo": buttonTwo
        ]
        
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[image]|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|[image]|", options: [], metrics: nil, views: views))
        
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10.0-[labelView]-10.0-|", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10.0-[label]-10.0-|", options: [], metrics: nil, views: views))
    
        if scene.isTextShownTop {
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10.0-[labelView]", options: [], metrics: nil, views: views))
        } else {
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:[labelView]-10.0-|", options: [], metrics: nil, views: views))
        }
        
        if !scene.isSceneDecision {
            let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureTapped))
            self.view.addGestureRecognizer(tap)
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10.0-[label]-10.0-|", options: [], metrics: nil, views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10.0-[label]-10.0-|", options: [], metrics: nil, views: views))
            
        } else {
            labelView.addSubview(buttonOne)
            labelView.addSubview(buttonTwo)
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10.0-[label]-10.0-[buttonOne]-10.0-|", options: [], metrics: nil, views: views))
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10.0-[label]-10.0-[buttonTwo]-10.0-|", options: [], metrics: nil, views: views))
            
            NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10.0-[buttonOne(==buttonTwo)]-10.0-[buttonTwo]-10.0-|", options: [], metrics: nil, views: views))
        }
        
        // Hide Text Box without Text
        labelView.isHidden = scene.textInfo.isEmpty
    }
    
    @objc func buttonAPressed() {
        goToNextScene(sceneID: scene.buttonASceneID)
    }

    @objc func buttonBPressed() {
        goToNextScene(sceneID: scene.buttonBSceneID)
    }
    
    @objc func tapGestureTapped() {

        if let currentText = label.text {
            let currentTextID = Int(scene.textInfo.index(of: currentText)!)
            
            UserDefaults.standard.set(currentTextID, forKey: "CurrentTextID")
            
            if scene.textInfo.count - 1 > currentTextID {
                let nextTextID = currentTextID + 1
                let nextText = scene.textInfo[nextTextID]
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.label.alpha = 0.0
                }, completion: { finished in
                    
                    UIView.animate(withDuration: 0.2, animations: {
                        self.label.text = nextText
                        // Animate label height
                        self.labelView.layoutIfNeeded()
                        // Animate label position
                        self.view.layoutIfNeeded()
                        self.label.alpha = 1.0
                    })
                })
                
                return
            }
        }
        
        if scene.nextSceneID == 0 {
            UserDefaults.standard.set(0, forKey: "CurrentScene")
            UserDefaults.standard.set(0, forKey: "CurrentTextID")
            let _ = navigationController?.popToRootViewController(animated: true)
            return
        }
        
        goToNextScene(sceneID: scene.nextSceneID)
    }
    
    func goToNextScene(sceneID: Int) {
        let url = Bundle.main.url(forResource: "Scenes", withExtension: "plist")!
        let plistData = NSArray(contentsOf: url)!
        
        let dictonary = plistData[sceneID] as! NSDictionary
        
        let nextScene = Scene(dictionary: dictonary)
        nextScene.sceneID = sceneID
        
        UserDefaults.standard.set(0, forKey: "CurrentTextID")
        
        let nextViewController = SceneViewController(scene: nextScene)
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    //==========================================================================
    // MARK: - UINavigationControllerDelegate
    //==========================================================================
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return FadeAnimation()
    }
    
    
    /*

    GENERAL:
    *How would I code unique transitions? Would it be better to add that also into the plist?  or even the screen effects if I wanted them)
    *Are there lists online of different effects I could use throughout the app to improve it?
    *How can I insert music into each scene or consistantly throughout the app?
     
    */

}
