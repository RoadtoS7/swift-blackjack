//
//  TrumpCardsTest.swift
//  BlackjackTest
//
//  Created by nylah.j on 2022/05/23.
//

import XCTest

class TrumpCardsTest: XCTestCase {

    func test_TrumpCards는_트럼프카드규칙대로_카드를갖는다() {
        // given
        let heartAce = Card(rank: .ace, suit: .heart)
        let heartTwo = Card(rank: .two, suit: .heart)
        let heartThree = Card(rank: .three, suit: .heart)
        let heartFour = Card(rank: .four, suit: .heart)
        let heartFive = Card(rank: .five, suit: .heart)
        let heartSix = Card(rank: .six, suit: .heart)
        let heartSeven = Card(rank: .seven, suit: .heart)
        let heartEight = Card(rank: .eight, suit: .heart)
        let heartNine = Card(rank: .nine, suit: .heart)
        let heartTen = Card(rank: .ten, suit: .heart)
        let heartJack = Card(rank: .jack, suit: .heart)
        let heartQueen = Card(rank: .queen, suit: .heart)
        let heartKing = Card(rank: .king, suit: .heart)
        
        let clubAce = Card(rank: .ace, suit: .club)
        let clubTwo = Card(rank: .two, suit: .club)
        let clubThree = Card(rank: .three, suit: .club)
        let clubFour = Card(rank: .four, suit: .club)
        let clubFive = Card(rank: .five, suit: .club)
        let clubSix = Card(rank: .six, suit: .club)
        let clubSeven = Card(rank: .seven, suit: .club)
        let clubEight = Card(rank: .eight, suit: .club)
        let clubNine = Card(rank: .nine, suit: .club)
        let clubTen = Card(rank: .ten, suit: .club)
        let clubJack = Card(rank: .jack, suit: .club)
        let clubQueen = Card(rank: .queen, suit: .club)
        let clubKing = Card(rank: .king, suit: .club)
        
        let diamondAce = Card(rank: .ace, suit: .diamond)
        let diamondTwo = Card(rank: .two, suit: .diamond)
        let diamondThree = Card(rank: .three, suit: .diamond)
        let diamondFour = Card(rank: .four, suit: .diamond)
        let diamondFive = Card(rank: .five, suit: .diamond)
        let diamondSix = Card(rank: .six, suit: .diamond)
        let diamondSeven = Card(rank: .seven, suit: .diamond)
        let diamondEight = Card(rank: .eight, suit: .diamond)
        let diamondNine = Card(rank: .nine, suit: .diamond)
        let diamondTen = Card(rank: .ten, suit: .diamond)
        let diamondJack = Card(rank: .jack, suit: .diamond)
        let diamondQueen = Card(rank: .queen, suit: .diamond)
        let diamondKing = Card(rank: .king, suit: .diamond)
        
        
        
        // then
        XCTAssertTrue(TrumpCards.value.contains(heartAce))
    }

}
