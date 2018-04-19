//
//  TeamViewCell.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 30/01/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

class TeamViewCell: UITableViewCell {

    @IBOutlet var _image: UIImageView!
    @IBOutlet var _team: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTeam(team: String) {
        self._team.text = team
    }
    
    func setImage(img: String) {
        let URL_IMAGE = URL(string: img)
        
        let session = URLSession(configuration: .default)
        
        let getImageFromUrl = session.dataTask(with: URL_IMAGE!){ (data, response, error) in
            
            if let e = error {
                print("Some error occurred: \(e)")
            } else {
                if (response as? HTTPURLResponse) != nil {
                    if let imageData = data {
                        let image = UIImage(data: imageData)
                        
                        if (image != nil) {
                            DispatchQueue.main.async(execute: {
                                 self._image.image = image
                            })
                        }

                    } else {
                        print("no image found")
                    }
                } else {
                    print("No response from server")
                }
            }
        }
        
        getImageFromUrl.resume()
    }
    
}
