//
//  SetGameModel.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import Foundation

struct SetGameModel {
    let cards: Dictionary<Int,Card>
    var roster: Array<Card>?
    var cardsInPlay: Dictionary<Int,Card>
    
    func choose(_ card: Card){
        //When we tap a card, we want to copy it to a temporary array while it's in the process of being verified as a set
        
    }
    
}
//
struct Card: Identifiable{
    var id: Int
    var inPlay = false
    var isMatched = false
    let symbol: Symbol
    let colour: Colour
    let number: Int
    let shading: Shading
    
    
}

//MARK: card characteristics
enum Symbol: CaseIterable{
    case oval
    case diamond
    case squiggle
}

enum Colour: CaseIterable{
    case red
    case green
    case purple
    
}
enum Shading: CaseIterable{
    case fill
    case outline
    case hatched
}
