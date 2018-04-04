//
//  PublicExtension.swift
//  Asteroid Runner
//
//  Created by mitchell hudson on 3/17/18.
//  Copyright © 2018 Make School. All rights reserved.
//

// https://stackoverflow.com/questions/25050309/swift-random-float-between-0-and-1

import Foundation
import CoreGraphics
import SpriteKit

// MARK: Int Extension

public extension Int {
  
  /// Returns a random Int point number between 0 and Int.max.
  public static var random: Int {
    return Int.random(n: Int.max)
  }
  
  /// Random integer between 0 and n-1.
  ///
  /// - Parameter n:  Interval max
  /// - Returns:      Returns a random Int point number between 0 and n max
  public static func random(n: Int) -> Int {
    return Int(arc4random_uniform(UInt32(n)))
  }
  
  ///  Random integer between min and max
  ///
  /// - Parameters:
  ///   - min:    Interval minimun
  ///   - max:    Interval max
  /// - Returns:  Returns a random Int point number between 0 and n max
  public static func random(min: Int, max: Int) -> Int {
    return Int.random(n: max - min + 1) + min
    
  }
}

// MARK: Double Extension

public extension Double {
  
  /// Returns a random floating point number between 0.0 and 1.0, inclusive.
  public static var random: Double {
    return Double(arc4random()) / 0xFFFFFFFF
  }
  
  /// Random double between 0 and n-1.
  ///
  /// - Parameter n:  Interval max
  /// - Returns:      Returns a random double point number between 0 and n max
  public static func random(min: Double, max: Double) -> Double {
    return Double.random * (max - min) + min
  }
}

// MARK: Float Extension

public extension Float {
  
  /// Returns a random floating point number between 0.0 and 1.0, inclusive.
  public static var random: Float {
    return Float(arc4random()) / 0xFFFFFFFF
  }
  
  /// Random float between 0 and n-1.
  ///
  /// - Parameter n:  Interval max
  /// - Returns:      Returns a random float point number between 0 and n max
  public static func random(min: Float, max: Float) -> Float {
    return Float.random * (max - min) + min
  }
}

// MARK: CGFloat Extension

public extension CGFloat {
  
  /// Randomly returns either 1.0 or -1.0.
  public static var randomSign: CGFloat {
    return (arc4random_uniform(2) == 0) ? 1.0 : -1.0
  }
  
  /// Returns a random floating point number between 0.0 and 1.0, inclusive.
  public static var random: CGFloat {
    return CGFloat(Float.random)
  }
  
  /// Random CGFloat between 0 and n-1.
  ///
  /// - Parameter n:  Interval max
  /// - Returns:      Returns a random CGFloat point number between 0 and n max
  public static func random(min: CGFloat, max: CGFloat) -> CGFloat {
    return CGFloat.random * (max - min) + min
  }
}

public extension CGVector {
  /**
   * Adds two CGVector values and returns the result as a new CGVector.
   */
  static public func + (left: CGVector, right: CGVector) -> CGVector {
    return CGVector(dx: left.dx + right.dx, dy: left.dy + right.dy)
  }
}

public extension CGPoint {
  /**
   * Adds two CGPoint values and returns the result as a new CGPoint.
   */
  static public func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
  }
}

extension UIColor {
  // Extension on colors to make RGB easier to read
  convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
    self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
  }
  
  convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat) {
    self.init(red: r/255, green: g/255, blue: b/255, alpha: alpha)
  }
}

