//
//  RoasterViewCell.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 28/02/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

class RoasterViewCell: UITableViewCell {

    @IBOutlet var number: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var poste: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setNumber(number: String) {
        self.number.text = number
    }
    
    func setName(name: String) {
        self.name.text = name
    }
    
    func setPoste(poste: String) {
        self.poste.text = poste
    }
    
    func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
    }
}
