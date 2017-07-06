//
//  ProductsGridFlowLayout.swift
//  LayoutChanger
//
//  Created by Sztanyi Szabolcs on 22/02/16.
//  Copyright © 2016 Zappdesigntemplates. All rights reserved.
//

import UIKit

class ProductsGridFlowLayout: UICollectionViewFlowLayout {

    let itemHeight: CGFloat = 120

    override init() {
        super.init()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }

    /**
     Sets up the layout for the collectionView. 0 distance between each cell, and vertical layout
     */
    func setupLayout() {
        minimumInteritemSpacing = 1
        minimumLineSpacing = 1
        scrollDirection = .vertical
    }

    func itemWidth() -> CGFloat {
        return (collectionView!.frame.width/2)-1
    }

    override var itemSize: CGSize {
        set {
            
          
            self.itemSize =  CGSize(width: itemWidth(), height: itemHeight)
        }
        get {
            return CGSize(width: itemWidth(), height: itemHeight)
        }
    }

    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return collectionView!.contentOffset
    }
}
