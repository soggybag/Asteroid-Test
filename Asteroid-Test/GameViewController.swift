//
//  GameViewController.swift
//  Asteroid-Test
//
//  Created by mitchell hudson on 4/3/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let view = self.view as! SKView? {
      // Load the SKScene from 'GameScene.sks'
      let scene = GameScene(size: view.frame.size)
      // Set the scale mode to scale to fit the window
      scene.scaleMode = .aspectFill
      
      // Present the scene
      view.presentScene(scene)
      
      
      view.ignoresSiblingOrder = true
      
      view.showsFPS = true
      view.showsNodeCount = true
    }
  }
    
}
