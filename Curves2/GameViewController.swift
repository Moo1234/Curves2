//
//  GameViewController.swift
//  Curves2
//
//  Created by Moritz Martin on 27.06.16.
//  Copyright (c) 2016 Moritz Martin. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if GameData.curveMode == 0 {
            if let scene = GameScene(fileNamed:"GameScene") {
                // Configure the view.s
                let skView = self.view as! SKView
                skView.showsFPS = true
                skView.showsNodeCount = true
                
                
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView.ignoresSiblingOrder = true
                
                /* Set the scale mode to scale to fit the window */
                scene.scaleMode = .AspectFill
                scene.backgroundColor = SKColor.blackColor()
                skView.presentScene(scene)
            }
        }else{
            if let scene = GameSceneCurve(fileNamed:"GameSceneCurve") {
                // Configure the view.s
                let skView = self.view as! SKView
                skView.showsFPS = true
                skView.showsNodeCount = true
        
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView.ignoresSiblingOrder = true
                
                /* Set the scale mode to scale to fit the window */
                scene.scaleMode = .AspectFill
                scene.backgroundColor = SKColor.blackColor()
                skView.presentScene(scene)
            }
        }
        
        
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
