//
//  UIView+Utils.swift
//  iOSNewProyect
//
//  Created by Dev2 on 27/09/2019.
//  Copyright © 2019 kolbStudio. All rights reserved.
//

import UIKit

extension UIView {
    func configureShadows(color: UIColor = UIColor.lightGray,
                          Opacity: Float = 0.6,
                          radius: CGFloat = 4.0,
                          offset: CGSize = CGSize.zero) {
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowOpacity = 0.6
        self.layer.shadowRadius = 8.0
    }
}
