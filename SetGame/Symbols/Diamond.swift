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
        let center = CGPoint(x:rect.midX, y:rect.midY)
        let upperMidPoint = center.midPoint(point2: CGPoint(x:rect.midX, y:rect.minY), lower: false)
        let lowerMidPoint = center.midPoint(point2: CGPoint(x:rect.midX, y:rect.maxY), lower: false)
        var p = Path()
        let lines = [CGPoint(x: rect.minX, y: rect.maxY/2),lowerMidPoint, CGPoint(x:rect.maxX, y: rect.maxY/2), upperMidPoint]
        p.addLines(lines)
        return p
    }
    
}





