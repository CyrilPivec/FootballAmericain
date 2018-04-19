//
//  RankViewCell.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 11/03/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

class RankViewCell: UITableViewCell {

    @IBOutlet var teamName: UILabel!
    @IBOutlet var teamPoint: UILabel!
    @IBOutlet var teamDefaite: UILabel!
    @IBOutlet var teamNul: UILabel!
    @IBOutlet var teamGagner: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTeamName(name: String) {
        self.teamName.text = name
    }
    
    func setTeamPoint(point: String) {
        self.teamPoint.text = point
    }
    
    func setTeamDefaite(defaite: String) {
        self.teamDefaite.text = defaite
    }
    
    func setTeamNul(nul: String) {
        self.teamNul.text = nul
    }
    
    func setTeamGagner(gagner: String) {
        self.teamGagner.text = gagner
    }
    
    func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
    }
    
}
