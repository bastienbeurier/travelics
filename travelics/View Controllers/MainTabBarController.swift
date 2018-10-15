//
//  MainTabBarController.swift
//  travelics
//
//  Created by Bastien Beurier on 10/15/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import Floaty


class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGraphitics()
    }
}

extension MainTabBarController {
    
    func startGraphitics() {
        Floaty.global.button.addItem("Exit Graphitics", icon: UIImage(), handler: { item in
            self.exitTapped()
        })
        
        Floaty.global.button.addItem("View Mode", icon: UIImage(), handler: { item in
            self.actionTapped()
        })
        
        Floaty.global.button.addItem("Action Mode", icon: UIImage(), handler: { item in
            self.viewTapped()
        })
        
        Floaty.global.show()
    }
    
    func exitTapped() {
        Floaty.global.button.close()
        Floaty.global.hide()
    }
    
    func actionTapped() {
        Floaty.global.button.close()
    }
    
    func viewTapped() {
        Floaty.global.button.close()
    }
    
}
