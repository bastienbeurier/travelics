//
//  GraphiticsScollBanner.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class GraphiticsScrollBanner: UIView {
    
    let label = UILabel()
    
    var timer = Timer()
    var shouldRenewTimer = false
    var isAllowedToBeVisible = false
    var minValue = Int.random(in: 20 ... 60)
    var maxValue = 100
    
    weak var scrollView: UIView?
    
    convenience init(scrollView: UIView) {
        self.init(frame: CGRect.zero)
        
        self.scrollView = scrollView
        
        self.isHidden = true
        self.isUserInteractionEnabled = false
        scrollView.superview?.addSubview(self)
        
        self.snp.makeConstraints { (make) -> Void in
            make.left.bottom.right.equalTo(scrollView)
            make.height.equalTo(80)
        }
        
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = label.font.withSize(32)
        self.addSubview(label)
        
        label.snp.makeConstraints { (make) -> Void in
            make.edges.equalToSuperview()
        }
        
        timer.invalidate()
    }
    
    func showWith(progress: Double) {
        guard isAllowedToBeVisible else { return }
        
        let viewPercent = maxValue - Int(progress*(Double(maxValue-minValue)))
        
        label.text = "\(viewPercent)%"
        
        let colorIndex = Int(round(Double(viewPercent)/10.0)) - 1
        let color = UIColor.graphiticsColors()[colorIndex]
        backgroundColor = color.withAlphaComponent(0.8)
        scrollView?.layer.borderWidth = 5.0
        scrollView?.layer.borderColor = color.cgColor
        
        if (timer.isValid) {
            shouldRenewTimer = true
        } else {
            startTimer()
            isHidden = false
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (Timer) in
            if (self.shouldRenewTimer) {
                self.shouldRenewTimer = false
            } else {
                self.timer.invalidate()
                self.isHidden = true
                self.scrollView?.layer.borderWidth = 0.0
            }
        }
    }
}
