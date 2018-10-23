//
//  FirstViewController.swift
//  travelics
//
//  Created by Bastien Beurier on 10/8/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

import SnapKit

class TripsViewController: UITableViewController {
    
    var graphiticsOverlaysVisible = false
    var graphiticsScrollBannerVisible = false
    var scrollBanner : GraphiticsScrollBanner?
    
    var trips: [Trip] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard (scrollBanner == nil) else { return }
        scrollBanner = GraphiticsScrollBanner.init(scrollView: tableView)
    }
    
}

extension TripsViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "upcoming-trip-cell") as! TripCell
        
        let trip = trips[indexPath.row]
        
        cell.titleView.text = trip.title
        cell.imageUrl = trip.image
        cell.toggleGraphiticsOverlay(isVisible: graphiticsOverlaysVisible)
        cell.selectionStyle = .none
        
        return cell
    }
    
}

extension TripsViewController {
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        guard let scrollBanner = scrollBanner else { return }
        scrollBanner.isAllowedToBeVisible = graphiticsScrollBannerVisible
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let scrollBanner = scrollBanner else { return }
        let currentProgress = Double(scrollView.contentOffset.y / (scrollView.contentSize.height - scrollView.frame.size.height))
        scrollBanner.showWith(progress: max(0,0, min(1.0, currentProgress)))
    }
    
}

extension TripsViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
}

extension TripsViewController {
    
    func toggleGraphiticsOverlays(isVisible: Bool) {
        graphiticsOverlaysVisible = isVisible
        
        guard let tableView = tableView else { return }
        for case let cell as TripCell in tableView.visibleCells {
            cell.toggleGraphiticsOverlay(isVisible: isVisible)
        }
    }
    
    func toggleGraphiticsScrollBanner(isVisible: Bool) {
        graphiticsScrollBannerVisible = isVisible
        
        if (!isVisible) {
            scrollBanner?.isHidden = true
        }
    }
    
}

