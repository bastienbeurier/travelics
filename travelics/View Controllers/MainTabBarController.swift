//
//  MainTabBarController.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import Floaty
import SnapKit


class MainTabBarController: UITabBarController {
    
    var graphiticsOverlays : [UIView] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupOverlays()
        startGraphitics()
    }
}

extension MainTabBarController {
    
    func startGraphitics() {
        Floaty.global.button.addItem("Hide", icon: UIImage(), handler: { item in
            self.exitTapped()
        })
        
        Floaty.global.button.addItem("View Mode", icon: UIImage(), handler: { item in
            self.viewTapped()
        })
        
        Floaty.global.button.addItem("Action Mode", icon: UIImage(), handler: { item in
            self.actionTapped()
        })
        
        Floaty.global.show()
    }
    
    func exitTapped() {
        Floaty.global.button.close()
        toggleGaphiticsOverlays(isVisible: false)
        toggleGraphiticsScrollBanner(isVisible: false)
    }
    
    func actionTapped() {
        Floaty.global.button.close()
        toggleGaphiticsOverlays(isVisible: true)
        toggleGraphiticsScrollBanner(isVisible: false)
    }
    
    func viewTapped() {
        Floaty.global.button.close()
        toggleGaphiticsOverlays(isVisible: false)
        toggleGraphiticsScrollBanner(isVisible: true)
    }
    
    func toggleGaphiticsOverlays(isVisible: Bool) {
        let searchVC = viewControllers![0] as! SearchViewController
        searchVC.toggleGraphiticsOverlays(isVisible: isVisible)
        
        for overlay in graphiticsOverlays {
            overlay.isHidden = !isVisible
        }
    }
    
    func toggleGraphiticsScrollBanner(isVisible: Bool) {
        let searchVC = viewControllers![0] as! SearchViewController
        searchVC.toggleGraphiticsScrollBanner(isVisible: isVisible)
    }
    
    func setupOverlays() {
        for view in tabBar.subviews {
            if view is UIControl {
                let overlay = GraphiticsOverlay.init(superview: view)
                graphiticsOverlays.append(overlay)
            }
        }
    }
    
}
