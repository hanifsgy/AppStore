//
//  Extension.swift
//  AppStore
//
//  Created by Hanif Sugiyanto on 8/25/16.
//  Copyright © 2016 Extrainteger. All rights reserved.
//

import UIKit

// For constraints
extension UIView {
    
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerate() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
        
    }
    
    
}