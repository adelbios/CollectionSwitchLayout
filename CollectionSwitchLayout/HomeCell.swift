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
    
    
    
    // i wanna put homeDate && homeName under homeImage
    
   
    var homeImage:UIImageView = {
        
       let img = UIImageView()
        
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
        
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()

   self.addSubview(homeImage)
        
    }
    

   
    

    
    func setupGridLayoutConstraints() {

        
        homeImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        homeImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        homeImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        homeImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
        

    }
    
    func setupListLayoutConstraints() {

        homeImage.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        homeImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        homeImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        homeImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true 
        
    }
    


}
