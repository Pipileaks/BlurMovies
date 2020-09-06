//
//  StartVC.swift
//  BlurMovies
//
//  Created by Umut Sever on 6.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    var genreID: String?
    var difficulty: String?
    var genreName: String?
    var totalPageRequest = GetRequest()
    override func viewDidLoad() {
        super.viewDidLoad()

        print(genreID)
        print(difficulty)
        print(genreName)
        
        
        totalPageRequest.randomMovieApi(gID: genreID!, diff: 5)
        sleep(1)
        print(totalPageRequest.totalPage, "total page")
    }
    

    @IBAction func startButton(_ sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "startToMain", sender: self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if let barVC = segue.destination as? UITabBarController {
               barVC.viewControllers?.forEach {
                   if let vc = $0 as? MainVC {
                    vc.difficulty = difficulty!
                   }
               }
           }
        
        
        
       }
    
    
}
