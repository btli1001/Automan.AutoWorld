//
//  File.swift
//  AutoWorld
//
//  Created by Automan on 3/10/16.
//  Copyright © 2016 Automan. All rights reserved.
//

import SpriteKit

class AWSceneMaster: SKScene {
    
    var ifCreateContent = false
    var textureAlates: [SKTextureAtlas]?
    
    override init() {
        super.init()
        setTexture()
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        setTexture()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToView(view: SKView) {
        super.didMoveToView(view)
        
        // if contents have being created
        if !ifCreateContent {
            // if there textures to be load
            loadTextrue()
            ifCreateContent = true
        }
    }
    
    /*
    init texture
    */
    func setTexture(){}
    
    /*
    load texture
    */
    func loadTextrue() {
        if textureAlates != nil {
            SKTextureAtlas.preloadTextureAtlases(textureAlates!, withCompletionHandler: {
                self.createContent()
            })
        } else {
            self.createContent()
        }
    }
    
    /*
    create node contents
    */
    func createContent() {}
    
    /*
    transate scene
    */
    func changeScene(scene: AWSceneMaster!) {
        self.view?.presentScene(scene, transition: SKTransition.flipVerticalWithDuration(0.2))
    }
}
