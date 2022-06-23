//
//  Squiggle.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-17.
//

import SwiftUI

struct Squiggle: Shape{
    func path(in rect: CGRect) -> Path {
        var p = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let top = CGPoint(x: rect.midX,y: rect.minY)
        let midPoint = center.midPoint(point2: top, lower: false)
        p.move(to:midPoint)
        p.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.midY), control: CGPoint(x:rect.midX/2, y: rect.minY))
        return p
    }
}


