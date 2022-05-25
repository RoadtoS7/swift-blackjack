//
//  CardScoreRule.swift
//  Blackjack
//
//  Created by nylah.j on 2022/05/23.
//

import Foundation

protocol CardScoreRule {
    static func countScore(cardDeck: CardDeck) -> Int
}

enum BlackjackScoreRule: CardScoreRule {
    private static let standard = 21
    
    static func countScore(cardDeck: CardDeck) -> Int {
        let sumWhereAceOne = totalScore(cardDeck: cardDeck, isAceEleven: false)
        let sumeWhereAceEleven = totalScore(cardDeck: cardDeck, isAceEleven: true)
        return bestScore(sumWhereAceOne: sumWhereAceOne, sumWhereAceEleven: sumeWhereAceEleven)
    }
    
    private static func totalScore(cardDeck: CardDeck, isAceEleven: Bool = true) -> Int {
        return cardDeck.cards.reduce(0) { partialResult, card in
            partialResult + cardScore(card: card, isAceBigger: isAceEleven)
        }
    }
    
    private static func cardScore(card: Card, isAceBigger: Bool = true) -> Int {
        switch card.rank {
        case .ace where isAceBigger: return 11
        case .ace: return 1
        case .two: return 2
        case .three: return 3
        case .four: return 4
        case .five: return 5
        case .six: return 6
        case .seven: return 7
        case .eight: return 8
        case .nine: return 9
        case .ten: return 10
        case .jack: return 10
        case .queen: return 10
        case .king: return 10
        }
    }
    
    private static func bestScore(sumWhereAceOne: Int, sumWhereAceEleven: Int) -> Int {
        let gapWhereAceOne = standard - sumWhereAceOne
        let gapWhereAceEleven = standard - sumWhereAceEleven
        
        let minGap = min(gapWhereAceOne, gapWhereAceEleven)
        
        if minGap == gapWhereAceOne {
            if gapWhereAceOne >= 0 { return sumWhereAceOne }
            return sumWhereAceEleven
        }
        
        if gapWhereAceEleven >= 0 { return sumWhereAceEleven }
        return sumWhereAceOne
    }
}
