//
//  ViewController.swift
//  AutoWorld
//
//  Created by Automan on 3/10/16.
//  Copyright © 2016 Automan. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBarHidden = true
        UIApplication.sharedApplication().statusBarHidden = true
        
        //load scene
        let scene = AWSceneTest()
        
        //add skview
        let skview = SKView(frame: self.view.frame)
        skview.showsDrawCount = true
        skview.showsNodeCount = true
        skview.showsFPS = true
        skview.presentScene(scene, transition: SKTransition.fadeWithDuration(0.2))
        self.view.addSubview(skview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

