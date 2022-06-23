//
//  CGPointExtensions.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-23.
//

import SwiftUI

extension CGPoint {
    
    func midPoint(point2: CGPoint, lower: Bool)->CGPoint{
        var yMidDistance = self.distance(from: point2)
        yMidDistance /= CGFloat(2)
        if lower{
            yMidDistance = -yMidDistance
        }
        return CGPoint(x: self.x, y: self.y + yMidDistance)
    }
    

    func distance(from point: CGPoint) -> CGFloat {
        return hypot(point.x - x, point.y - y)
    }
}
