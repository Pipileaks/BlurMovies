//
//  ViewController.swift
//  BlurMovies
//
//  Created by Umut Sever on 3.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let cellSpacingHeight: CGFloat = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CategoriesCells", bundle: nil), forCellReuseIdentifier: "Categories")
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
      
    }
    
    
    
    
    
    
    
    
    
    //Hide Status Bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //VC Ends Here
}


extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
          return 8
      }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return cellSpacingHeight
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Categories", for: indexPath) as! CategoriesCells
        
        cell.titles.text = "Horror"
        cell.images.image = UIImage(named: "mystery")
      
        
        return cell
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            // Swift 4.2 onwards
            return UITableView.automaticDimension

          
        }
    
    }
    
    

//DataSource Ends Here
}


extension MainVC: UITableViewDelegate {
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
              // Swift 4.2 onwards
              return UITableView.automaticDimension

            
          }
}
