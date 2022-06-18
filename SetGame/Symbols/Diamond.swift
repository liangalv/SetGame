//
//  Diamond.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-17.
//

import SwiftUI

struct Diamond: Shape{
    func path(in rect: CGRect) -> Path {
        // let's say we have some predefined space
        //1. let's start at the halfway point between x=0 and the center: calculate the midpoint
        let midPoint = midPoint(point1: CGPoint(x: rect.midX, y: rect.minY), point2: CGPoint(x: rect.midX, y:rect.minY))
        var p = Path()
        p.move(to: midPoint)
        let lines = [CGPoint(x: rect.minX, y: rect.maxY/2), CGPoint(x: rect.maxX/2, y: rect.maxY), CGPoint(x:rect.maxX, y: rect.maxY/2), midPoint]
        p.addLines(lines)
        return p
    }
    
//MARK: - HELPER FUNCTIONS
    func midPoint(point1: CGPoint, point2: CGPoint)->CGPoint{
        let yMidDistance = point1.distance(from: point2) / 2
        return CGPoint(x: point1.x, y: point1.y - yMidDistance)
    }
    
    
}


extension CGPoint {

    func distance(from point: CGPoint) -> CGFloat {
        return hypot(point.x - x, point.y - y)
    }
}
