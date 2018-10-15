//
//  GraphiticsView.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import SnapKit

class GraphiticsOverlay: UIView {
    
    let color = UIColor.graphiticsRandom()
    
    convenience init(superview: UIView) {
        self.init(frame: CGRect.zero)
        
        self.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 6.0
        self.isHidden = true
        self.isUserInteractionEnabled = false
        superview.addSubview(self)
        
        self.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(superview)
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        let T: CGFloat = 3     // desired thickness of lines
        let G: CGFloat = 6     // desired gap between lines
        let W = rect.size.width
        let H = rect.size.height
        
        guard let c = UIGraphicsGetCurrentContext() else { return }
        c.setStrokeColor(color.cgColor)
        c.setLineWidth(T)
        
        var p = -(W > H ? W : H) - T
        while p <= W {
            
            c.move( to: CGPoint(x: p-T, y: -T) )
            c.addLine( to: CGPoint(x: p+T+H, y: T+H) )
            c.strokePath()
            p += G + T + T
        }
    }

}
