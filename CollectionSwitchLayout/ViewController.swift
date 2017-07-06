//
//  ViewController.swift
//  CollectionSwitchLayout
//
//  Created by adelRadwan on 7/5/17.
//  Copyright © 2017 adelRadwan. All rights reserved.
//

import UIKit
//import DisplaySwitcher


private let animationDuration: TimeInterval = 0.3
private let listLayoutStaticCellHeight: CGFloat = 100
private let gridLayoutStaticCellHeight: CGFloat = 168

class ViewController: UIViewController {
    
    fileprivate var data = ["1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3","1","2","3"]
//    @IBOutlet weak var switcherButton: SwitchLayoutButton!
    @IBOutlet weak var collectionView: UICollectionView!
//    fileprivate var isTransitionAvailable = true
//    fileprivate lazy var listLayout = DisplaySwitchLayout(staticCellHeight: listLayoutStaticCellHeight, nextLayoutStaticCellHeight: gridLayoutStaticCellHeight, layoutState: .list)
//    fileprivate lazy var gridLayout = DisplaySwitchLayout(staticCellHeight: gridLayoutStaticCellHeight, nextLayoutStaticCellHeight: listLayoutStaticCellHeight, layoutState: .grid)
//    fileprivate var layoutState: LayoutState = .list

    
    let gridFlowLayout = ProductsGridFlowLayout()
    let listFlowLayout = ProductsListFlowLayout()
     var isGridFlowLayoutUsed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        switcherButton.isSelected = true
//        setupCollectionView()
         collectionView.register(UINib(nibName: "HomeCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
        collectionView.backgroundColor = UIColor.lightGray
        setupInitialLayout()
        
    }
//     NotificationCenter.default.post(name: NSNotification.Name("l"), object: nil) 
//    fileprivate func setupCollectionView() {
//        collectionView.collectionViewLayout = listLayout
//        collectionView.register(UINib(nibName: "HomeCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
//    }
    
    override func viewWillLayoutSubviews() {
        
        self.collectionView.collectionViewLayout.invalidateLayout()
    }
    
    
    @IBAction func switcherPressButton(_ sender: UIButton) {
        

        
        if sender.isSelected {
            
            
            isGridFlowLayoutUsed = false
            
            UIView.animate(withDuration: 0.60, delay: 0.0, options: .transitionCurlDown, animations: { ()-> Void in
                
                self.collectionView.setCollectionViewLayout(self.listFlowLayout, animated: true)
                
            }, completion: nil)
            
            
            
            sender.isSelected = false
        }
        else{
            
            isGridFlowLayoutUsed = true
            
            UIView.animate(withDuration: 0.60, delay: 0.0, options: .transitionCurlDown, animations: { ()-> Void in
                
                self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: true)
                
            }, completion: nil)
            
            sender.isSelected = true
        }
        
  
        
    }
    
    func setupInitialLayout() {
        isGridFlowLayoutUsed = false
        collectionView.collectionViewLayout = listFlowLayout
    }
}
extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        

        if isGridFlowLayoutUsed {
            
           cell.setupGridLayoutConstraints()
           
         
        }else{
            
           cell.setupListLayoutConstraints()
          
        }
        
        cell.backgroundColor = UIColor.red
//        cell.homeDate.text = "2017-05-02 22:10:14 PM"
//        cell.homeName.text = "adel bios"
        cell.homeImage.image = UIImage(named: self.data[indexPath.row])
        return cell
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
//
//        if isGridFlowLayoutUsed {
//            
//            print("grid")
//            
//        }else{
//            
//            print("list")
//            
//        }
//        
//    }

    // MARK: - UICollectionViewDelegate
//    func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout {
//        let customTransitionLayout = TransitionLayout(currentLayout: fromLayout, nextLayout: toLayout)
//        return customTransitionLayout
//    }
//
//    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        isTransitionAvailable = false
//    }
//    
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        isTransitionAvailable = true
//    }

}
