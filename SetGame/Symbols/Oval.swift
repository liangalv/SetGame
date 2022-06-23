//
//  Oval.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-17.
//

import SwiftUI

struct Oval: Shape{
    func path(in rect: CGRect) -> Path {
        var p = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let top = CGPoint(x:rect.midX, y:rect.minY)
        p.move(to: center.midPoint(point2: top, lower:false))
        p.addEllipse(in: rect)
        return p
    }
}
