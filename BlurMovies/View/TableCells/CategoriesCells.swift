//
//  CategoriesCells.swift
//  BlurMovies
//
//  Created by Umut Sever on 3.09.2020.
//  Copyright © 2020 Umut Sever. All rights reserved.
//

import UIKit

class CategoriesCells: UITableViewCell {

    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var titles: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
      
      
    }
    
  
    
}
