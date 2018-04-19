//
//  ScoreSection.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 30/01/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import Foundation

struct ScoreSection {
    var genre: String!
    var match: [cellDataScore]!
    var expanded: Bool!
    
    init(genre: String, match: [cellDataScore], expanded: Bool) {
        self.genre = genre
        self.match = match
        self.expanded = expanded
    }
}
