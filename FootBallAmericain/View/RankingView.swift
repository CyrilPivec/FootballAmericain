//
//  SecondViewController.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 10/12/2017.
//  Copyright © 2017 Cyril PIVEC. All rights reserved.
//

import UIKit

class RankingView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    var ObjectsArray = [RankObject]()
    var ObjectsArray2 = [RankObject]()
    private var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ObjectsArray = [
            RankObject(sectionName: "AFC North", sectionObjects: [
                RankTeam(teamName: "Steelers", teamGagner: "13", teamNul: "0", teamPerdu: "3", teamPoint: "81"),
                RankTeam(teamName: "Ravens", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Bengals", teamGagner: "7", teamNul: "0", teamPerdu: "9", teamPoint: "43"),
                RankTeam(teamName: "Browns", teamGagner: "0", teamNul: "0", teamPerdu: "16", teamPoint: "0")]),
            RankObject(sectionName: "AFC South", sectionObjects: [
                RankTeam(teamName: "Jaguars", teamGagner: "10", teamNul: "0", teamPerdu: "6", teamPoint: "62"),
                RankTeam(teamName: "Titans", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Colts", teamGagner: "4", teamNul: "0", teamPerdu: "12", teamPoint: "25"),
                RankTeam(teamName: "Texans", teamGagner: "4", teamNul: "0", teamPerdu: "12", teamPoint: "25")]),
            RankObject(sectionName: "AFC East", sectionObjects: [
                RankTeam(teamName: "Patriots", teamGagner: "13", teamNul: "0", teamPerdu: "3", teamPoint: "81"),
                RankTeam(teamName: "Bills", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Dolphins", teamGagner: "6", teamNul: "0", teamPerdu: "10", teamPoint: "37"),
                RankTeam(teamName: "Jets", teamGagner: "5", teamNul: "0", teamPerdu: "11", teamPoint: "31")]),
            RankObject(sectionName: "AFC West", sectionObjects: [
                RankTeam(teamName: "Chiefs", teamGagner: "10", teamNul: "0", teamPerdu: "6", teamPoint: "62"),
                RankTeam(teamName: "Chargers", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Raiders", teamGagner: "6", teamNul: "0", teamPerdu: "10", teamPoint: "37"),
                RankTeam(teamName: "Broncos", teamGagner: "5", teamNul: "0", teamPerdu: "11", teamPoint: "31")])
        ]
        
        ObjectsArray2 = [
            RankObject(sectionName: "NFC North", sectionObjects: [
                RankTeam(teamName: "Vikings", teamGagner: "13", teamNul: "0", teamPerdu: "3", teamPoint: "81"),
                RankTeam(teamName: "Lions", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Packers", teamGagner: "7", teamNul: "0", teamPerdu: "9", teamPoint: "43"),
                RankTeam(teamName: "Bears", teamGagner: "5", teamNul: "0", teamPerdu: "11", teamPoint: "0")]),
            RankObject(sectionName: "NFC South", sectionObjects: [
                RankTeam(teamName: "Saints", teamGagner: "11", teamNul: "0", teamPerdu: "5", teamPoint: "68"),
                RankTeam(teamName: "Panthers", teamGagner: "11", teamNul: "0", teamPerdu: "5", teamPoint: "68"),
                RankTeam(teamName: "Colts", teamGagner: "10", teamNul: "0", teamPerdu: "6", teamPoint: "62"),
                RankTeam(teamName: "Texans", teamGagner: "5", teamNul: "0", teamPerdu: "11", teamPoint: "31")]),
            RankObject(sectionName: "NFC East", sectionObjects: [
                RankTeam(teamName: "Eagles", teamGagner: "13", teamNul: "0", teamPerdu: "3", teamPoint: "81"),
                RankTeam(teamName: "Cowboys", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Redskins", teamGagner: "7", teamNul: "0", teamPerdu: "9", teamPoint: "43"),
                RankTeam(teamName: "Giants", teamGagner: "3", teamNul: "0", teamPerdu: "13", teamPoint: "18")]),
            RankObject(sectionName: "NFC West", sectionObjects: [
                RankTeam(teamName: "Rams", teamGagner: "11", teamNul: "0", teamPerdu: "5", teamPoint: "68"),
                RankTeam(teamName: "Seahawks", teamGagner: "9", teamNul: "0", teamPerdu: "7", teamPoint: "56"),
                RankTeam(teamName: "Cardinals", teamGagner: "8", teamNul: "0", teamPerdu: "8", teamPoint: "50"),
                RankTeam(teamName: "49ers", teamGagner: "6", teamNul: "0", teamPerdu: "19", teamPoint: "37")])
        ]
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    @IBAction func valueChanged(_ sender: Any) {
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let cell = Bundle.main.loadNibNamed("RankViewCell", owner: self, options: nil)?.first as! RankViewCell
            
            cell.setTeamName(name: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamName)
            cell.setTeamGagner(gagner: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamGagner)
            cell.setTeamNul(nul: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamNul)
            cell.setTeamDefaite(defaite: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamPerdu)
            cell.setTeamPoint(point: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamPoint)
            
            if (i == 1) {
                cell.setBackgroundColor(color: UIColor.white)
                i = 0
            } else {
                cell.setBackgroundColor(color: UIColor.lightGray)
                i = 1
            }
            
            return cell
        case 1:
            let cell = Bundle.main.loadNibNamed("RankViewCell", owner: self, options: nil)?.first as! RankViewCell
            
            cell.setTeamName(name: ObjectsArray2[indexPath.section].sectionObjects[indexPath.row].teamName)
            cell.setTeamGagner(gagner: ObjectsArray2[indexPath.section].sectionObjects[indexPath.row].teamGagner)
            cell.setTeamNul(nul: ObjectsArray2[indexPath.section].sectionObjects[indexPath.row].teamNul)
            cell.setTeamDefaite(defaite: ObjectsArray2[indexPath.section].sectionObjects[indexPath.row].teamPerdu)
            cell.setTeamPoint(point: ObjectsArray2[indexPath.section].sectionObjects[indexPath.row].teamPoint)
            
            if (i == 1) {
                cell.setBackgroundColor(color: UIColor.lightGray)
                i = 0
            } else {
                cell.setBackgroundColor(color: UIColor.white)
                i = 1
            }
            
            return cell
        default:
            let cell = Bundle.main.loadNibNamed("RankViewCell", owner: self, options: nil)?.first as! RankViewCell
            
            cell.setTeamName(name: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamName)
            cell.setTeamGagner(gagner: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamGagner)
            cell.setTeamNul(nul: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamNul)
            cell.setTeamDefaite(defaite: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamPerdu)
            cell.setTeamPoint(point: ObjectsArray[indexPath.section].sectionObjects[indexPath.row].teamPoint)
            
            if (i == 1) {
                cell.setBackgroundColor(color: UIColor.white)
                i = 0
            } else {
                cell.setBackgroundColor(color: UIColor.lightGray)
                i = 1
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return ObjectsArray[section].sectionObjects.count
        case 1:
            return ObjectsArray2[section].sectionObjects.count
        default:
            return ObjectsArray[section].sectionObjects.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return ObjectsArray.count
        case 1:
            return ObjectsArray2.count
        default:
            return ObjectsArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return ObjectsArray[section].sectionName
        case 1:
            return ObjectsArray2[section].sectionName
        default:
            return ObjectsArray[section].sectionName
        }
    }
}

