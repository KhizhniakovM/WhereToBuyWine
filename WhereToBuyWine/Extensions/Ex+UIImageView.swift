//
//  Ex+UIImageView.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 29.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import UIKit

extension UIImageView {
    static func customCircleView(color: UIColor) -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = color
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 46.5
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        return imageView
    }
}


