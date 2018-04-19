//
//  TeamsView.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 30/01/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

struct cellTeam2 {
    let fullName: String!
    let name: String!
    let nickName: String!
    let picture: String!
    let colorPrimary: UIColor!
    let colorSecondary: UIColor!
}

class TeamsView: UIViewController {
    
    @IBOutlet var _tableview: UITableView!
    var arrayOfCellTeam2 = [cellTeam2]()
    
    var teamName = String()
    var teamImage = String()
    var colorPrimary = UIColor()
    var colorSecondary = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self._tableview.dataSource = self
        self._tableview.delegate = self

        arrayOfCellTeam2 = [
                            cellTeam2(fullName: "New-York Giant", name: "Giant", nickName: "NYG", picture: "http://www.footballamericain.com/img_equipe/300/nyg.png", colorPrimary: UIColor(hex: "001E62"), colorSecondary: UIColor(hex: "A6192E")),
                            cellTeam2(fullName: "New Orleans Saints", name: "Saints", nickName: "NO", picture: "http://www.footballamericain.com/img_equipe/300/no.png", colorPrimary: UIColor(hex: "D3BC8D"), colorSecondary: UIColor(hex: "101820")),
                            cellTeam2(fullName: "Dallas Cowboys", name: "Cowboys", nickName: "DAL", picture: "http://www.footballamericain.com/img_equipe/300/dal.png", colorPrimary: UIColor(hex: "041E42"), colorSecondary: UIColor(hex: "869397")),
                            cellTeam2(fullName: "Washington Redskins", name: "Redskins", nickName: "WAS", picture: "http://www.footballamericain.com/img_equipe/300/was.png", colorPrimary: UIColor(hex: "862633"), colorSecondary: UIColor(hex: "FFCD00")),
                            cellTeam2(fullName: "New England Patriots", name: "Patriots", nickName: "NE", picture: "http://www.footballamericain.com/img_equipe/300/ne.png", colorPrimary: UIColor(hex: "0C2340"), colorSecondary: UIColor(hex: "C8102E")),
                            cellTeam2(fullName: "Buffalo Bills", name: "Bills", nickName: "BUF", picture: "http://www.footballamericain.com/img_equipe/300/buf.png", colorPrimary: UIColor(hex: "00338D"), colorSecondary: UIColor(hex: "C8102E")),
                            cellTeam2(fullName: "Indianapolis Colts", name: "Colts", nickName: "IND", picture: "http://www.footballamericain.com/img_equipe/300/ind.png", colorPrimary: UIColor(hex: "003A70"), colorSecondary: UIColor(hex: "FFFFFF")),
                            cellTeam2(fullName: "Jacksonville Jaguars", name: "Jaguars", nickName: "JAX", picture: "http://www.footballamericain.com/img_equipe/300/jac.png", colorPrimary: UIColor(hex: "006778"), colorSecondary: UIColor(hex: "A17925"))]
    }

    override func viewDidAppear(_ animated: Bool) {
//        _tableview.reloadData()
    }
}

extension TeamsView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension TeamsView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellTeam2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TeamViewCell", owner: self, options: nil)?.first as! TeamViewCell

        cell.setTeam(team: arrayOfCellTeam2[indexPath.row].fullName)
        cell.setImage(img: arrayOfCellTeam2[indexPath.row].picture)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        teamName = arrayOfCellTeam2[indexPath.row].fullName
        colorPrimary = arrayOfCellTeam2[indexPath.row].colorPrimary
        colorSecondary = arrayOfCellTeam2[indexPath.row].colorSecondary
        teamImage = arrayOfCellTeam2[indexPath.row].picture
        
        performSegue(withIdentifier: "SegueTeam", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! SingleTeamView
        viewController.teamName = teamName
        viewController.colorPrimary = colorPrimary
        viewController.colorSecondary = colorSecondary
        viewController.teamImage = teamImage
    }
}

