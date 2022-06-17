//
//  SetGameModel.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import Foundation
import Collections

struct SetGameModel {
    let cards: OrderedDictionary<Int,Card>
    // I need to make this an Array 
    var roster: Array<Card>?
    var cardsInPlay: [Card]{
        get{
            Array(cards.values).filter({$0.inPlay == true})
        }
    }
    mutating func choose(_ card: Card){
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
