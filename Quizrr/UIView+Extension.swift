//
//  UIView+Extension.swift
//  Quizrr
//
//  Created by Pulkit Aggarwal on 27/05/18.
//  Copyright © 2018 Quizrr. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientColor(colorOne: UIColor,colorTwo: UIColor){
        
        let gradientColor = CAGradientLayer()
        gradientColor.frame = bounds //same size of object
        gradientColor.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientColor.locations = [0.0,1.0]
        gradientColor.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientColor.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientColor, at: 0)

        
    }
}
