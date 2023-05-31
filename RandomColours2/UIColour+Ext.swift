//
//  UIColour+Ext.swift
//  RandomColours2
//
//  Created by Anderson Chin on 28/5/2023.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColour = UIColor(red: CGFloat.random(in: 0...1),
                                   green: CGFloat.random(in: 0...1),
                                   blue: CGFloat.random(in: 0...1),
                                   alpha: 1)
        return randomColour
    }
}
