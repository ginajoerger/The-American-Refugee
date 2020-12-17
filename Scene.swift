//
//  Scene.swift
//  The American Refugee
//
//  Created by Gina Joerger on 1/17/17.
//  Copyright © 2017 Joerger & Feigl. All rights reserved.
//

import Foundation

class Scene {
    var sceneID: Int = 0
    let imageName: String
    let textInfo: [String]
    let buttonASceneID: Int
    let buttonBSceneID: Int
    let nextSceneID: Int
    let isTextShownTop: Bool
    let isSceneDecision: Bool
    
    init(dictionary: NSDictionary) {
        self.imageName = dictionary["ImageName"] as? String ?? ""
        self.textInfo = dictionary["TextInfo"] as? [String] ?? []
        self.buttonASceneID = dictionary["buttonASceneID"] as? Int ?? 0
        self.buttonBSceneID = dictionary["buttonBSceneID"] as? Int ?? 0
        self.nextSceneID = dictionary["nextSceneID"] as? Int ?? 0
        self.isTextShownTop = dictionary["IsTextShownTop"] as? Bool ?? true
        self.isSceneDecision = dictionary["IsSceneDecision"] as? Bool ?? true
    }
}
