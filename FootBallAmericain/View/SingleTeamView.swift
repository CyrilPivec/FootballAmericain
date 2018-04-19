//
//  SingleTeamView.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 12/02/2018.
//  Copyright © 2018 Cyril PIVEC. All rights reserved.
//

import UIKit

struct cellPlayer {
    let number : String!
    let name : String!
    let poste : String!
}

class SingleTeamView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var teamName = String()
    var teamImage = String()
    var colorPrimary = UIColor()
    var colorSecondary = UIColor()
    
    var arrayOfCellData = [cellData]()
    var arrayOfCellPlayer = [cellPlayer]()
    
    private var i = 0
    
    var segmentedControl: UISegmentedControl!
    var imageView: UIImageView!
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.sectionHeaderHeight = 40.0
        
        arrayOfCellData = [cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description")]
        
        arrayOfCellPlayer = [cellPlayer(number: "6", name: "Allen Ryan", poste: "P"),
                             cellPlayer(number: "83", name: "Allen Dwayne", poste: "TE"),
                             cellPlayer(number: "80", name: "Amendola", poste: "WR"),
                             cellPlayer(number: "60", name: "Andrews David", poste: "C"),
                             cellPlayer(number: "29", name: "Bademosi Johnson", poste: "WR"),
                             cellPlayer(number: "12", name: "Brady Tom", poste: "QB"),
                             cellPlayer(number: "49", name: "Cardone Joe", poste: "LS"),
                             cellPlayer(number: "21", name: "Buttler Malcolm", poste: "CB"),
                             cellPlayer(number: "64", name: "Kidder Caleb", poste: "DE"),
                             cellPlayer(number: "68", name: "Waddle LaAdrian", poste: "OT"),
                             cellPlayer(number: "6", name: "Allen Ryan", poste: "P"),
                             cellPlayer(number: "83", name: "Allen Dwayne", poste: "TE"),
                             cellPlayer(number: "80", name: "Amendola", poste: "WR"),
                             cellPlayer(number: "60", name: "Andrews David", poste: "C"),
                             cellPlayer(number: "29", name: "Bademosi Johnson", poste: "WR"),
                             cellPlayer(number: "6", name: "Allen Ryan", poste: "P"),
                             cellPlayer(number: "83", name: "Allen Dwayne", poste: "TE"),
                             cellPlayer(number: "80", name: "Amendola", poste: "WR"),
                             cellPlayer(number: "60", name: "Andrews David", poste: "C"),
                             cellPlayer(number: "29", name: "Bademosi Johnson", poste: "WR"),
                             cellPlayer(number: "12", name: "Brady Tom", poste: "QB"),
                             cellPlayer(number: "49", name: "Cardone Joe", poste: "LS"),
                             cellPlayer(number: "21", name: "Buttler Malcolm", poste: "CB"),
                             cellPlayer(number: "64", name: "Kidder Caleb", poste: "DE"),
                             cellPlayer(number: "68", name: "Waddle LaAdrian", poste: "OT"),
                             cellPlayer(number: "6", name: "Allen Ryan", poste: "P"),
                             cellPlayer(number: "83", name: "Allen Dwayne", poste: "TE"),
                             cellPlayer(number: "80", name: "Amendola", poste: "WR"),
                             cellPlayer(number: "60", name: "Andrews David", poste: "C"),
                             cellPlayer(number: "29", name: "Bademosi Johnson", poste: "WR")]
        
        
        segmentedControl = UISegmentedControl(frame: CGRect(x: 20, y: 5, width: tableView.frame.width, height: 30))
        segmentedControl.insertSegment(withTitle: "CLUB", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "ROASTER", at: 1, animated: false)
        segmentedControl.insertSegment(withTitle: "DEPTHCHART", at: 2, animated: false)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.tintColor = colorSecondary
        segmentedControl.addTarget(self, action: #selector(segmentedValueChanged(_:)), for: .valueChanged)
        
        let header = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 250))
        
        label = UILabel(frame: CGRect(x: 20, y: 50, width: (tableView.frame.width / 2) - 30, height: 200))
        label.text = teamName
        label.textColor = colorSecondary
        label.numberOfLines = 3
        label.font = UIFont(name: label.font.fontName, size: 28)
        imageView = UIImageView(frame: CGRect(x: tableView.frame.width / 2, y: 20, width: tableView.frame.width / 2, height: 200))
        setImage(img: teamImage, imageView: imageView)
        
        header.addSubview(label)
        header.addSubview(imageView)
        
        header.backgroundColor = colorPrimary
        tableView.tableHeaderView = header
        tableView.backgroundColor = colorPrimary
        self.navigationController?.navigationBar.barTintColor = colorPrimary
        self.navigationController?.navigationBar.tintColor = colorSecondary
    }
    
    func setImage(img: String, imageView: UIImageView) {
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
                                imageView.image = image
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
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let v = UIView()
        v.backgroundColor = colorPrimary
        v.addSubview(segmentedControl)
        return v
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return arrayOfCellData.count
        case 1:
            return arrayOfCellPlayer.count
        case 2:
            return 100
        default:
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return 105
        case 1:
            return 40
        case 2:
            return 50
        default:
            return 105
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            let cell = Bundle.main.loadNibNamed("ArticleViewCell", owner: self, options: nil)?.first as! ArticleViewCell
            
            cell._image.image = arrayOfCellData[indexPath.row].image
            cell._title.text = arrayOfCellData[indexPath.row].titre
            cell._desc.text = arrayOfCellData[indexPath.row].desc
            
            cell.setBackgroundColor(color: colorPrimary)
            
            return cell
        case 1:
            let cell = Bundle.main.loadNibNamed("RoasterViewCell", owner: self, options: nil)?.first as! RoasterViewCell
            
            cell.setName(name: arrayOfCellPlayer[indexPath.row].name)
            cell.setPoste(poste: arrayOfCellPlayer[indexPath.row].poste)
            cell.setNumber(number: arrayOfCellPlayer[indexPath.row].number)
            
            if (i == 1) {
                cell.setBackgroundColor(color: UIColor.lightGray)
                i = 0
            } else {
                cell.setBackgroundColor(color: UIColor.white)
                i = 1
            }
            
            return cell
        case 2:
            let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "CellID")
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        default:
            let cell = Bundle.main.loadNibNamed("ArticleViewCell", owner: self, options: nil)?.first as! ArticleViewCell
            
            cell._image.image = arrayOfCellData[indexPath.row].image
            cell._title.text = arrayOfCellData[indexPath.row].titre
            cell._desc.text = arrayOfCellData[indexPath.row].desc
            
            cell.setBackgroundColor(color: colorPrimary)
            
            return cell
        }
    }
}
