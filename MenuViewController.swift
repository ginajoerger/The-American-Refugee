//
//  MenuViewController.swift
//  The American Refugee
//
//  Created by Gina Joerger on 12/8/16.
//  Copyright © 2016 Joerger & Feigl. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var startbutton: UIButton! {
        didSet {
            startbutton.imageView?.contentMode = .scaleAspectFit
        }
    }
    @IBOutlet weak var donatebutton: UIButton! {
        didSet {
            donatebutton.imageView?.contentMode = .scaleAspectFit
        }
    }
    @IBOutlet weak var inspirationbutton: UIButton! {
        didSet {
            inspirationbutton.imageView?.contentMode = .scaleAspectFit
        }
    }
    @IBOutlet weak var creditsbutton: UIButton! {
        didSet {
            creditsbutton.imageView?.contentMode = .scaleAspectFit
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    @IBAction func startGame()  {
    
        let url = Bundle.main.url(forResource: "Scenes", withExtension: "plist")!
        let plistData = NSArray(contentsOf: url)!
        
        let savedSceneID = UserDefaults.standard.integer(forKey: "CurrentScene")
        
        let dictonary = plistData[savedSceneID] as! NSDictionary
        let scene = Scene(dictionary: dictonary)

        let firstSceneViewController = SceneViewController(scene: scene)
    
        navigationController?.pushViewController(firstSceneViewController, animated: true)
    
    }
    
    @IBAction func goToDonate(_ sender: Any) {
        let firstDonateViewController = DonateViewController()
        
        navigationController?.pushViewController(firstDonateViewController, animated: true)
    }
    
    @IBAction func goToInspiration(){
        let firstInspirationViewController = InspirationViewController()
        
        navigationController?.pushViewController(firstInspirationViewController, animated: true)
    }
    
    @IBAction func goToCredits(){
        let firstCreditsViewController = CreditsViewController()
        
        navigationController?.pushViewController(firstCreditsViewController, animated: true)
    }
}
