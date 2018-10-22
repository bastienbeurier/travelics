//
//  SlidingCell.swift
//  travelics
//
//  Created by Bastien Beurier on 10/13/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class SlidingCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var graphiticsOverlayVisible = false
    var graphiticsScrollBannerVisible = false
    var scrollBanner : GraphiticsScrollBanner?
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var destinations: [Destination]? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        scrollBanner = GraphiticsScrollBanner.init(scrollView: collectionView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension SlidingCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let destinations = destinations else { return 0 }
        return section == 0 ? destinations.count : 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let destinations = destinations else { return UICollectionViewCell() }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "destination-cell", for: indexPath) as! DestinationCell
        
        let destination = destinations[indexPath.row]
        cell.imageUrl = destination.image
        cell.titleLabel.text = destination.title
        cell.subtitleLabel.text = destination.subtitle
        cell.toggleGraphiticsOverlay(isVisible: graphiticsOverlayVisible)
        
        return cell
    }
    
}

extension SlidingCell: UICollectionViewDelegate, UIScrollViewDelegate {
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        guard let scrollBanner = scrollBanner else { return }
        scrollBanner.isAllowedToBeVisible = graphiticsScrollBannerVisible
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let scrollBanner = scrollBanner else { return }
        let currentProgress = Double(scrollView.contentOffset.x / (scrollView.contentSize.width - scrollView.frame.size.width))
        scrollBanner.showWith(progress: max(0,0, min(1.0, currentProgress)))
    }
    
}

extension SlidingCell {
    
    func toggleGraphiticsOverlays(isVisible: Bool) {
        graphiticsOverlayVisible = isVisible
        
        for case let cell as DestinationCell in collectionView.visibleCells {
            cell.toggleGraphiticsOverlay(isVisible: graphiticsOverlayVisible)
        }
    }
    
    func toggleGraphiticsScrollBanner(isVisible: Bool) {
        graphiticsScrollBannerVisible = isVisible
        
        if (!isVisible) {
            scrollBanner?.isHidden = true
        }
    }
    
}
