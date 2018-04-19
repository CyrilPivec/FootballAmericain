//
//  RankData.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 11/03/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import Foundation

struct RankTeam {
    var teamName: String!
    var teamGagner: String!
    var teamNul: String!
    var teamPerdu: String!
    var teamPoint: String!
}

struct RankObject {
    var sectionName: String!
    var sectionObjects: [RankTeam]!
}
