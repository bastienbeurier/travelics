//
//  GraphiticsScollBanner.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class GraphiticsScollBanner: UIView {
    
    let label = UILabel()
    
    var timer = Timer()
    var shouldRenewTimer = false
    var isAllowedToBeVisible = false
    var percentiles: [Int] = {
        var result: [Int] = []
        
        let minSeen = Int.random(in: 0 ... 40)
        var previousValue = 100
        result.append(previousValue)
        for _ in 0..<100 {
            previousValue = Int.random(in: max(minSeen, previousValue - 5) ... previousValue)
            result.append(previousValue)
        }
        
        return result
    }()
    
    convenience init(scrollView: UIView) {
        self.init(frame: CGRect.zero)
        
        self.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.layer.borderWidth = 6.0
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
    }
    
    func showWith(progress: Int) {
        guard isAllowedToBeVisible else { return }
        
        label.text = "\(percentiles[max(0, min(99, progress))])%"
        if (timer.isValid) {
            shouldRenewTimer = true
        } else {
            isHidden = false
            startTimer()
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { (Timer) in
            if (self.shouldRenewTimer) {
                self.shouldRenewTimer = false
            } else {
                self.timer.invalidate()
                self.isHidden = true
            }
        }
    }
}


