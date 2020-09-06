//
//  PopupVC.swift
//  BlurMovies
//
//  Created by Umut Sever on 6.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class PopupVC: UIViewController {

    var difficulty = "Easy"
    
    @IBOutlet weak var segmented: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        
        self.showAnimate()
      
       
        if difficulty == "Easy" {
            segmented.selectedSegmentIndex = 0
        } else {
            segmented.selectedSegmentIndex = 1
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func difficultyControl(_ sender: UISegmentedControl) {
        
        
        
        switch segmented.selectedSegmentIndex {
        case 0:
            difficulty = "Easy"
        case 1:
            difficulty = "Hard"
        default: break
            
        
    }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let barVC = segue.destination as? UITabBarController {
            barVC.viewControllers?.forEach {
                if let vc = $0 as? MainVC {
                    vc.difficulty = difficulty
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
    

    @IBAction func closeButton(_ sender: UIButton) {
        
        
        self.removeAnimate()
        
        performSegue(withIdentifier: "popupToMain", sender: self)
    }
    
    
    
    func showAnimate()
       {
           self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
           self.view.alpha = 0.0;
           UIView.animate(withDuration: 0.25, animations: {
               self.view.alpha = 1.0
               self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
           });
       }
       
       func removeAnimate()
       {
           UIView.animate(withDuration: 0.25, animations: {
               self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
               self.view.alpha = 0.0;
               }, completion:{(finished : Bool)  in
                   if (finished)
                   {
                    
                       self.view.removeFromSuperview()
                   }
           });
       }
    

}
