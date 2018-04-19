//
//  ScoreExpandableHeaderView.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 27/02/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

protocol ScoreExpandableHeaderViewDelegate {
    func toggleSection(header: ScoreExpandableHeaderView, section: Int)
}

class ScoreExpandableHeaderView: UITableViewHeaderFooterView {
    var delegate: ScoreExpandableHeaderViewDelegate?
    var section: Int!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func selectHeaderAction(gestureReconizer: UITapGestureRecognizer) {
        let cell = gestureReconizer.view as! ScoreExpandableHeaderView
        delegate?.toggleSection(header: self, section: cell.section)
    }
    
    func customInit(title: String, section: Int, delegate: ScoreExpandableHeaderViewDelegate) {
        self.textLabel?.text = title
        self.section = section
        self.delegate = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor = UIColor.white
        self.contentView.backgroundColor = UIColor.darkGray
    }

}
