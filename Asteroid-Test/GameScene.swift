//
//  GameScene.swift
//  Asteroid-Test
//
//  Created by mitchell hudson on 4/3/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
  override func didMove(to view: SKView) {
    
    let radius: CGFloat = 5
    
    for i in 0 ..< 8 {
      let r = radius + CGFloat(5 * i)
      let asteroid = AsteroidRender(radius: r, sides: 12)
      addChild(asteroid)
      asteroid.position.x = size.width / 2 * CGFloat(i).truncatingRemainder(dividingBy: 2)
      asteroid.position.y = size.width / 2 * floor(CGFloat(i) / 2)
      asteroid.position.x += size.width / 4
      asteroid.position.y += size.width / 7
    }
  }
      
}
