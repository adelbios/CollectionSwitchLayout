//
//  HomeCell.swift
//  CollectionSwitchLayout
//
//  Created by adelRadwan on 7/5/17.
//  Copyright © 2017 adelRadwan. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    // important ..... 
    
    
    
    
    
    
    
    
    
    
    
    
    
    // i wanna put homeDate && homeName ander homeImage
    
    
    
    @IBOutlet weak var homeImage: UIImageView!
    
    @IBOutlet weak var homeDate: UILabel!
    @IBOutlet weak var homeName: UILabel!
    @IBOutlet weak var imageBottom: NSLayoutConstraint!
    @IBOutlet weak var imageWidth: NSLayoutConstraint!
    @IBOutlet weak var imageLeading: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()


        
//        
//        NotificationCenter.default.addObserver(forName: NSNotification.Name("g"), object: nil, queue: nil) { (Notification) in
//            
//       
//            self.setupGridLayoutConstraints()
//            
//        }
//        
//        
//        NotificationCenter.default.addObserver(forName: NSNotification.Name("l"), object: nil, queue: nil) { (Notification) in
//            
//          
//            self.setupListLayoutConstraints()
//            
//        }
//
    }
    

    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
      
        
    }
    

    
    func setupGridLayoutConstraints() {

        

        imageWidth.constant = self.frame.size.width
        
        imageWidth.isActive = true
        

    }
    
    func setupListLayoutConstraints() {

   imageWidth.constant = 100
   imageWidth.isActive = true

        
    }
    


}
