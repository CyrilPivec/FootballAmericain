//
//  ScoreView.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 11/12/2017.
//  Copyright © 2017 Cyril PIVEC. All rights reserved.
//

import UIKit

struct cellDataScore {
    let cell : Int!
    let image1 : UIImage!
    let image2 : UIImage!
    let equipe1 : String!
    let equipe2 : String!
    let score1 : String!
    let score2 : String!
}

class ScoreView: UIViewController, UITableViewDelegate, UITableViewDataSource, ScoreExpandableHeaderViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var arrayOfCellScore = [
        cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
        cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
        cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
        cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
        cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
        cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13")
    ]
    
    var sections = [
        ScoreSection(genre: "Week 1",
                     match: [cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13")],
                     expanded: false),
        ScoreSection(genre: "Week 2",
                     match: [cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13")],
                     expanded: false),
        ScoreSection(genre: "Week 3",
                     match: [cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13"),
                             cellDataScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), equipe1 : "Oakland Raiders", equipe2 : "Buffalo Bils", score1 : "14", score2: "13")],
                     expanded: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].match.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded) {
            return 90
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ScoreExpandableHeaderView()
        header.customInit(title: sections[section].genre, section: section, delegate: self)
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
//        cell.textLabel?.text = sections[indexPath.section].match[indexPath.row]
//        return cell
        
        let cell = Bundle.main.loadNibNamed("ScoreViewCell", owner: self, options: nil)?.first as! ScoreViewCell
        
        cell.setImage1(image: sections[indexPath.section].match[indexPath.row].image1)
        cell.setImage2(image: sections[indexPath.section].match[indexPath.row].image2)
        cell.setScore1(score: sections[indexPath.section].match[indexPath.row].score1)
        cell.setScore2(score: sections[indexPath.section].match[indexPath.row].score2)
        cell.setEquipe1(equipe: sections[indexPath.section].match[indexPath.row].equipe1)
        cell.setEquipe2(equipe: sections[indexPath.section].match[indexPath.row].equipe2)
        
        return cell
    }
    
    func toggleSection(header: ScoreExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        tableView.beginUpdates()
        for i in 0 ..< sections[section].match.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        tableView.endUpdates()
    }
}
