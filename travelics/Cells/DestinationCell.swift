//
//  DestinationCell.swift
//  travelics
//
//  Created by Bastien Beurier on 10/13/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import SnapKit

class DestinationCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    var graphiticsOverlay : UIView?
    
    var imageUrl: String? {
        didSet {
            guard let imageUrl = imageUrl else { return }
            downloadImage(from: imageUrl)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
        
        graphiticsOverlay = GraphiticsOverlay.init(superview: contentView)
    }
    
    func downloadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() {
                if (urlString == self.imageUrl) {
                    self.imageView.image = UIImage(data: data)
                }
            }
        }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func toggleGraphiticsOverlay(isVisible: Bool) {
        graphiticsOverlay?.isHidden = !isVisible
    }
    
}
