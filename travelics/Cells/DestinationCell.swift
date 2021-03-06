//
//  DestinationCell.swift
//  travelics
//
//  Created by Bastien Beurier on 10/13/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import SDWebImage
import SnapKit

class DestinationCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    var graphiticsOverlay : UIView?
    
    var imageUrl: String? {
        didSet {
            guard let imageView = imageView, let imageUrl = imageUrl else { return }
            imageView.image = nil
            imageView.sd_setImage(with: URL(string: imageUrl), completed: nil)
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
