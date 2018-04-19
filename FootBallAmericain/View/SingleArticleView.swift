//
//  SingleArticleView.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 29/01/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

class SingleArticleView: UIViewController {
    
    
    var _title = String()
    var _description = String()
    var _image = UIImage()
    
    @IBOutlet var titre: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var desc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titre.text = _title
        image.image = _image
    }

}
