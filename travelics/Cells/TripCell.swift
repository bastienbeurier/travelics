//
//  UpcomingTripCell.swift
//  travelics
//
//  Created by Bastien Beurier on 10/22/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import SDWebImage

class TripCell: UITableViewCell {

    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var tripImageView: UIImageView!
    
    var graphiticsOverlay : UIView?
    
    var imageUrl: String? {
        didSet {
            guard let imageUrl = imageUrl else { return }
            tripImageView.image = nil
            tripImageView.sd_setImage(with: URL(string: imageUrl), completed: nil)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
        
        graphiticsOverlay = GraphiticsOverlay.init(superview: contentView)
    }
    
    func toggleGraphiticsOverlay(isVisible: Bool) {
        graphiticsOverlay?.isHidden = !isVisible
    }

}
