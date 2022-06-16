//
//  SetGameView.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import SwiftUI
struct SetGameView: View {
    var body: some View {
       CardView()
    }
}


struct CardView: View {
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: DrawingConstants.rectangleRadius)
            shape.padding()
            
        }
    }
}

private struct DrawingConstants{
    static let rectangleRadius: CGFloat = 20
    

}

struct SetGameView_Previews: PreviewProvider {
    static var previews: some View {
        SetGameView()
    }
}
