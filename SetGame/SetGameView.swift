//
//  SetGameView.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import SwiftUI
struct SetGameView: View {
    let viewModel: SetGameVM
    var body: some View {
        VStack{
            AspectVGrid(items: viewModel.cardsInPlay, aspectRatio: 2/3) {card in
                CardView().onTapGesture {
                    print(card.id)
                }
        
                }
            Spacer(minLength: 0)
        }
        
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
    static let game = SetGameVM()
    static var previews: some View {
        SetGameView(viewModel: game)
    }
}
