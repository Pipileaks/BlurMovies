//
//  ViewController.swift
//  BlurMovies
//
//  Created by Umut Sever on 3.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    //Constants
    let cellSpacingHeight: CGFloat = 5
    var categories = [GenreArray]()
    var genreID: String?
    var genreName: String?
    var difficulty = "Easy"
    
    
    
    
    
    
    
    
    
    //VC Begins Here
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add key-value into Array - Categories
        for i in Genres {
            categories.append(GenreArray(id: i.key, name: i.value))
        }
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CategoriesCells", bundle: nil), forCellReuseIdentifier: "Categories")
        
        
        
    print(difficulty, "Diff")
      
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func settingButton(_ sender: UIButton) {
        
      let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopupVC
        
        popOverVC.difficulty = difficulty
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
        
    }
    
    
    
    //Hide Status Bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mainToStart" {
            let secondVC = segue.destination as! StartVC
            secondVC.genreID = genreID
            secondVC.difficulty = difficulty
            secondVC.genreName = genreName
        }
        
    }
    
    
    
    //VC Ends Here
}



extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
  
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Categories", for: indexPath) as! CategoriesCells
       
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        cell.titles.text = categories[indexPath.row].name
        cell.images.image = UIImage(named: categories[indexPath.row].id)
     
        
        
        return cell
    
      
    
    }
    
  
    

//DataSource Ends Here
}


extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        genreID = categories[indexPath.row].id
        genreName = categories[indexPath.row].name
        
        performSegue(withIdentifier: "mainToStart", sender: self)
        
    }
 
}
