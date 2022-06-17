//
//  SetGameVM.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import SwiftUI
import OrderedCollections

class SetGameVM{
    //we need to generate the model here
    private(set) var model = generateModel()
    var cards: OrderedDictionary<Int,Card>{
        model.cards
    }
    var cardsInPlay: [Card]{
        model.cardsInPlay
    }
//MARK: - Intents
    func choose(_ card: Card){
        model.choose(card)
    }
    
//MARK: - HELPER FUNCTIONS
    static private func generateModel()->SetGameModel{
        var cardMap : OrderedDictionary<Int,Card> = [:]
        var cardCount = 1
        for symbol in Symbol.allCases{
            for colour in Colour.allCases{
                for shade in Shading.allCases{
                    for num in 1..<4{
                        cardMap[cardCount] = Card(id: cardCount, symbol: symbol, colour: colour, number: num, shading: shade)
                        cardCount += 1
                    }
                }
            }
        }
        //so we need to modify the struct and pass it back with a new state for the cards in play
        generateCardsInPlay(for: &cardMap)
        return SetGameModel(cards: cardMap)
    }
    static private func generateCardsInPlay(for cardMap: inout OrderedDictionary<Int,Card>){
        //Iterate over the ordered dictionary and set the state of 12 cards to inPlay = true
        var indexArray:Array<Int> = []
        for _ in 0..<gameConstants.cardsInPlay{
            var randomCardID = Int.random(in: 0..<gameConstants.cardsInDeck)
            while indexArray.contains(randomCardID){
                randomCardID = Int.random(in: 0..<gameConstants.cardsInDeck)
            }
            indexArray.append(randomCardID)
            cardMap[randomCardID]?.inPlay = true
        }
        
    }
    
//MARK: - Constants
    private struct gameConstants {
        static let cardsInPlay = 12
        static let cardsInDeck = 81
    }
    
    
}
