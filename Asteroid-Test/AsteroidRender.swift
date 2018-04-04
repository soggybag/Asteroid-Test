//
//  Asteroid-Render.swift
//  Asteroid-Test
//
//  Created by mitchell hudson on 4/3/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit

class AsteroidRender: SKShapeNode {
  init(radius: CGFloat = 60, sides: Int = 12) {
    super.init()
    
    let asteroidPath = UIBezierPath()
    let step = CGFloat(Double.pi * 2 / Double(sides))
    
    let steps: CGFloat = 0
    
    for i in 0 ..< sides {
      let r = CGFloat.random(min: -100, max: 100) / 100 * step / 2
      
      let nextStep = steps + (step * CGFloat(i)) + r
      
      let x = sin(nextStep) * radius
      let y = cos(nextStep) * radius
      
      let p = CGPoint(x: x, y: y)
      
      if i == 0 {
        asteroidPath.move(to: p)
      } else {
        asteroidPath.addLine(to: p)
      }
    }
    
    asteroidPath.close()
    
    lineWidth = 2
    strokeColor = UIColor.white
    
    path = asteroidPath.cgPath
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
