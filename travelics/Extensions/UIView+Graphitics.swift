//
//  UIView+Graphitics.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import SnapKit

extension UIView {

    static func addGraphiticsOverlayTo(superview: UIView) -> UIView {
        let overlay = UIView()
        overlay.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        overlay.layer.borderColor = UIColor.graphiticsRandom().cgColor
        overlay.layer.borderWidth = 6.0
        overlay.isHidden = true
        overlay.isUserInteractionEnabled = false
        superview.addSubview(overlay)
        
        overlay.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(superview)
        }
        
        return overlay
    }
    
}
