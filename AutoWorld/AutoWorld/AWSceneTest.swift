//
//  AWSceneTest.swift
//  AutoWorld
//
//  Created by Automan on 3/10/16.
//  Copyright © 2016 Automan. All rights reserved.
//

import SpriteKit

class AWSceneTest: AWSceneMaster {
    
    override func setTexture() {
        super.setTexture()
        let atlas1 = SKTextureAtlas(named: "AtlasTest")
        let atlas2 = SKTextureAtlas()
        self.textureAlates = [atlas1,atlas2]
    }
    
    override func createContent() {
        super.createContent()
        self.backgroundColor = SKColor.blueColor()
    }
}