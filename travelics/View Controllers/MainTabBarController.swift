//
//  MainTabBarController.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import Floaty
import SDWebImage
import SnapKit


class MainTabBarController: UITabBarController {
    
    var graphiticsOverlays : [UIView] = []
    
    var graphiticsMode = -1
    
    var viewItem : FloatyItem?
    var actionItem : FloatyItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupOverlays()
        startGraphitics()
        
        let upcomingTripsVC = viewControllers![0].children[0] as! TripsViewController
        upcomingTripsVC.trips = TripProvider.upcomingTrips()
        
        let savedTripsVC = viewControllers![2].children[0] as! TripsViewController
        savedTripsVC.trips = TripProvider.savedTrips()
        
        selectedIndex = 1
    }
}

extension MainTabBarController {
    
    func startGraphitics() {
        viewItem = Floaty.global.button.addItem("View Mode", icon: UIImage(named: "view"), handler: { item in
            self.viewTapped()
        })
        
        actionItem = Floaty.global.button.addItem("Action Mode", icon: UIImage(named: "action"), handler: { item in
            self.actionTapped()
        })
        
        Floaty.global.show()
    }
    
    func updateFloatyButtons() {
        viewItem?.iconImageView.image = UIImage(named: graphiticsMode == 0 ? "view-selected" : "view")
        actionItem?.iconImageView.image = UIImage(named: graphiticsMode == 1 ? "action-selected" : "action")
    }
    
    func actionTapped() {
        Floaty.global.button.close()
        toggleGaphiticsOverlays(isVisible: graphiticsMode != 1)
        toggleGraphiticsScrollBanner(isVisible: false)
        
        graphiticsMode = graphiticsMode != 1 ? 1 : -1
        updateFloatyButtons()
    }
    
    func viewTapped() {
        Floaty.global.button.close()
        toggleGaphiticsOverlays(isVisible: false)
        toggleGraphiticsScrollBanner(isVisible: graphiticsMode != 0)
        
        graphiticsMode = graphiticsMode != 0 ? 0 : -1
        updateFloatyButtons()
    }
    
    func toggleGaphiticsOverlays(isVisible: Bool) {
        let upcomingTripsVC = viewControllers![0].children[0] as! TripsViewController
        upcomingTripsVC.toggleGraphiticsOverlays(isVisible: isVisible)
        
        let searchVC = viewControllers![1] as! SearchViewController
        searchVC.toggleGraphiticsOverlays(isVisible: isVisible)
        
        let savedTripsVC = viewControllers![2].children[0] as! TripsViewController
        savedTripsVC.toggleGraphiticsOverlays(isVisible: isVisible)
        
        for overlay in graphiticsOverlays {
            overlay.isHidden = !isVisible
        }
    }
    
    func toggleGraphiticsScrollBanner(isVisible: Bool) {
        let upcomingTripsVC = viewControllers![0].children[0] as! TripsViewController
        upcomingTripsVC.toggleGraphiticsScrollBanner(isVisible: isVisible)
        
        let searchVC = viewControllers![1] as! SearchViewController
        searchVC.toggleGraphiticsScrollBanner(isVisible: isVisible)
        
        let savedTripsVC = viewControllers![2].children[0] as! TripsViewController
        savedTripsVC.toggleGraphiticsScrollBanner(isVisible: isVisible)
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
