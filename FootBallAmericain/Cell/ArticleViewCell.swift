//
//  ArticleViewCell.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 11/12/2017.
//  Copyright © 2017 Cyril PIVEC. All rights reserved.
//

import UIKit

class ArticleViewCell: UITableViewCell {

    @IBOutlet var _image: UIImageView!
    @IBOutlet var _title: UILabel!
    @IBOutlet var _desc: UILabel!
    
    func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
    }
}
