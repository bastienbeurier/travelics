//
//  UIColor+Graphitics.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func graphiticsColors() -> [UIColor] {
        return [
            UIColor(red: 253/255.0, green: 231/255.0, blue: 200/255.0, alpha: 1.0),
            UIColor(red: 250/255.0, green: 213/255.0, blue: 183/255.0, alpha: 1.0),
            UIColor(red: 248/255.0, green: 197/255.0, blue: 167/255.0, alpha: 1.0),
            UIColor(red: 244/255.0, green: 179/255.0, blue: 150/255.0, alpha: 1.0),
            UIColor(red: 242/255.0, green: 161/255.0, blue: 133/255.0, alpha: 1.0),
            UIColor(red: 240/255.0, green: 144/255.0, blue: 117/255.0, alpha: 1.0),
            UIColor(red: 235/255.0, green: 126/255.0, blue: 100/255.0, alpha: 1.0),
            UIColor(red: 233/255.0, green: 109/255.0, blue: 84/255.0, alpha: 1.0),
            UIColor(red: 230/255.0, green: 92/255.0, blue: 66/255.0, alpha: 1.0),
            UIColor(red: 226/255.0, green: 75/255.0, blue: 61/255.0, alpha: 1.0)
        ]
    }
    
    static func graphiticsRandom() -> UIColor {
        return UIColor.graphiticsColors().randomElement()!
    }
    
}
