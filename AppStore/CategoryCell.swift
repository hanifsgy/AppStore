//
//  CategoryCell.swift
//  AppStore
//
//  Created by Hanif Sugiyanto on 8/25/16.
//  Copyright © 2016 Extrainteger. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "appCellId"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // understanding view AppCollection
    let appCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .Horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.clearColor()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    
    func setupViews() {
        
        backgroundColor = UIColor.clearColor()
        
        // Adding subView AppsCollection
        addSubview(appCollectionView)
        appCollectionView.dataSource = self
        appCollectionView.delegate = self
        appCollectionView.registerClass(AppCell.self, forCellWithReuseIdentifier: cellId)
        addConstraintsWithFormat("H:|-8-[v0]-|", views: appCollectionView)
        addConstraintsWithFormat("V:|[v0]|", views: appCollectionView)
        
        
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(100, frame.height)
    }
    
    // Create insetSection to avoid padding
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 14, 0, 14)
    }
    
}

class AppCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    // imageViewCell
    let imageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "frozen")
        image.contentMode = .ScaleAspectFill
        image.layer.cornerRadius = 16
        image.layer.masksToBounds = true
        return image
    }()
    
    // label Name
    let labelName: UILabel = {
       let label = UILabel()
        label.text = "Disney Build it: Frozen"
        label.font = UIFont.systemFontOfSize(14)
        label.numberOfLines = 2
        return label
    }()
    
    let categoryLabel: UILabel = {
        let category = UILabel()
        category.text = "Entertainment"
        category.font = UIFont.systemFontOfSize(13)
        return category
    }()
    
    let priceLabel: UILabel = {
        let price = UILabel()
        price.text = "$3.99"
        price.font = UIFont.systemFontOfSize(13)
        price.textColor = UIColor.darkGrayColor()
        return price
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupView() {
        addSubview(imageView)
        addSubview(labelName)
        addSubview(categoryLabel)
        addSubview(priceLabel)
        backgroundColor = UIColor.blackColor()
        imageView.frame = CGRectMake(0, 0, frame.width, frame.width)
        labelName.frame = CGRectMake(0, frame.width + 2, frame.width, 40)
        categoryLabel.frame = CGRectMake(0, frame.width + 38, frame.width, 20)
        priceLabel.frame = CGRectMake(0, frame.width + 56, frame.width, 20)
        
        
    }
}