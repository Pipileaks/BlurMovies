//
//  PlayVC.swift
//  BlurMovies
//
//  Created by Umut Sever on 5.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class PlayVC: UIViewController {

   
    @IBOutlet weak var labelC: UIButton!
    
    @IBOutlet weak var labelP: UILabel!
    @IBOutlet weak var hoppa: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
       
        labelP.numberOfLines = 0
        labelP.adjustsFontSizeToFitWidth = true
        
        
        view.addSubview(labelP)
        
    }
    

    @IBAction func patates(_ sender: UIButton) {
        
    
        
    }
    

}


extension UIView
{
    
    
    func addBlurToView(alpha: Double) {
        var blurEffect: UIBlurEffect!
        if #available(iOS 10.0, *) {
            blurEffect = UIBlurEffect(style: .prominent)
        } else {
            blurEffect = UIBlurEffect(style: .light)
        }
        
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = self.bounds
        blurredEffectView.alpha = CGFloat(alpha)
        blurredEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurredEffectView)
    }
    
    
    func removeBlurFromView(alpha: Double) {
        for subview in self.subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
        
        var blurEffect: UIBlurEffect!
        if #available(iOS 10.0, *) {
            blurEffect = UIBlurEffect(style: .extraLight)
        } else {
            blurEffect = UIBlurEffect(style: .light)
        }
        
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = self.bounds
        blurredEffectView.alpha = CGFloat(alpha)
        blurredEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurredEffectView)
        
    }
    
    
    func completeRemove() {
        for subview in self.subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
        
    }
}
