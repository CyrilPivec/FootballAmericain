//
//  ScoreViewCell.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 11/12/2017.
//  Copyright © 2017 Cyril PIVEC. All rights reserved.
//

import UIKit

class ScoreViewCell: UITableViewCell {

    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var equipe1: UILabel!
    @IBOutlet var equipe2: UILabel!
    @IBOutlet var score1: UILabel!
    @IBOutlet var score2: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setImage1(image: UIImage) {
        self.image1.image = image
    }
    
    func setImage2(image: UIImage) {
        self.image2.image = image
    }
    
    func setEquipe1(equipe: String) {
        self.equipe1.text = equipe
    }
    
    func setEquipe2(equipe: String) {
        self.equipe2.text = equipe
    }
    
    func setScore1(score: String) {
        self.score1.text = score
    }
    
    func setScore2(score: String) {
        self.score2.text = score
    }
}
