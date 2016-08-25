//
//  ViewController.swift
//  AppStore
//
//  Created by Hanif Sugiyanto on 8/25/16.
//  Copyright © 2016 Extrainteger. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView?.backgroundColor = UIColor.whiteColor()
        collectionView?.registerClass(CategoryCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath)
        return cell
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    // use FlowDelegate for sizeItemAtIndex
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(view.frame.width, 230)
    }
    
}

