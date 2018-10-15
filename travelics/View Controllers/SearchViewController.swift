//
//  SecondViewController.swift
//  travelics
//
//  Created by Bastien Beurier on 10/8/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    let destinations: [String: [Destination]] = DestinationProvider.destinations()
    let destinationTypes: [String] = DestinationProvider.destinationTypes()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension SearchViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinationTypes.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sliding-cell") as! SlidingCell
        
        let destinationType = destinationTypes[indexPath.row]
        let destinationsForType = destinations[destinationType]
        
        cell.title = destinationType
        cell.destinations = destinationsForType
        
        return cell
    }
    
}

extension SearchViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 257
    }
    
}

