//
//  FirstViewController.swift
//  FootBallAmericain
//
//  Created by Cyril PIVEC on 10/12/2017.
//  Copyright © 2017 Cyril PIVEC. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let image: UIImage!
    let titre : String!
    let desc : String!
}

struct cellScore {
    let cell : Int!
    let image1: UIImage!
    let image2: UIImage!
    let score1: String!
    let score2: String!
}

class ArticleView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var arrayOfCellData = [cellData]()
    var arrayOfCellScore = [cellScore]()
    
    var _title = String()
    var _description = String()
    var _image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        arrayOfCellData = [cellData(cell : 1, image : #imageLiteral(resourceName: "us"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description"),
                           cellData(cell : 2, image : #imageLiteral(resourceName: "us2"), titre : "La course aux playoffs", desc : "Description")]
        
        arrayOfCellScore = [cellScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), score1 : "14", score2 : "15"),
                            cellScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), score1 : "14", score2 : "15"),
                            cellScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), score1 : "14", score2 : "15"),
                            cellScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), score1 : "14", score2 : "15"),
                            cellScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), score1 : "14", score2 : "15"),
                            cellScore(cell : 1, image1 : #imageLiteral(resourceName: "OAK-logo"), image2 : #imageLiteral(resourceName: "BUF-logo"), score1 : "14", score2 : "15")]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfCellScore.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScoreCollectionViewCell", for: indexPath) as! ScoreCollectionViewCell
        
        cell._image1.image = arrayOfCellScore[indexPath.row].image1
        cell._image2.image = arrayOfCellScore[indexPath.row].image2
        cell._score1.text = arrayOfCellScore[indexPath.row].score1
        cell._score2.text = arrayOfCellScore[indexPath.row].score2
        
        return cell
    }
    
}

extension ArticleView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1 {
            return 230
        } else if arrayOfCellData[indexPath.row].cell == 2 {
            return 105
        } else {
            return 105
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: 10))
        view.backgroundColor = .clear
        
        return view
    }
}

extension ArticleView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1 {
            
            let cell = Bundle.main.loadNibNamed("TopArticleViewCell", owner: self, options: nil)?.first as! TopArticleViewCell
            
            cell._image.image = arrayOfCellData[indexPath.row].image
            cell._titre.text = arrayOfCellData[indexPath.row].titre
            cell._desc.text = arrayOfCellData[indexPath.row].desc
            
            return cell
            
        } else if arrayOfCellData[indexPath.row].cell == 2 {
            
            let cell = Bundle.main.loadNibNamed("ArticleViewCell", owner: self, options: nil)?.first as! ArticleViewCell
            
            cell._image.image = arrayOfCellData[indexPath.row].image
            cell._title.text = arrayOfCellData[indexPath.row].titre
            cell._desc.text = arrayOfCellData[indexPath.row].desc
            
            return cell
            
        } else {
            
            let cell = Bundle.main.loadNibNamed("ArticleViewCell", owner: self, options: nil)?.first as! ArticleViewCell
            
            cell._image.image = arrayOfCellData[indexPath.row].image
            cell._title.text = arrayOfCellData[indexPath.row].titre
            cell._desc.text = arrayOfCellData[indexPath.row].desc
            
            return cell
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _title = arrayOfCellData[indexPath.row].titre
        _description = arrayOfCellData[indexPath.row].desc
        _image = arrayOfCellData[indexPath.row].image
        performSegue(withIdentifier: "Segue1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! SingleArticleView
        viewController._title = _title
        viewController._description = _description
        viewController._image = _image
    }
}
