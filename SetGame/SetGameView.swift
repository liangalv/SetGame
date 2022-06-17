//
//  SetGameView.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import SwiftUI
struct SetGameView: View {
    @ObservedObject var viewModel: SetGameVM
    var body: some View {
        VStack{
            AspectVGrid(items: viewModel.cardsInPlay, aspectRatio: 2/3) {card in
                CardView(card: card).onTapGesture {
                    print(card.id)
                    print(card.inPlay)
                    print(card.colour)
                    print(card.symbol)
                    print(card.shading)
                    print(card.number)
                }
        
            }
            HStack{
                ForEach(viewModel.roster ?? []){card in
                    CardView(card: card)
                }
            }
        }
        
    }
}


struct CardView: View {
    let card: Card
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
