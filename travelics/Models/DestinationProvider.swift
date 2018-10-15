//
//  DestinationProvider.swift
//  travelics
//
//  Created by Bastien Beurier on 10/13/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class DestinationProvider: NSObject {
    
    static let image = "https://ihg.scene7.com/is/image/ihg/holiday-inn-the-colony-4629618286-16x5?hei=512"

    static func destinations() -> [String : [Destination]] {
        let destinationTypes = DestinationProvider.destinationTypes()
        return [
            destinationTypes[0]: hotelsNearYou(),
            destinationTypes[1]: recentSearches(),
            destinationTypes[2]: topDestinations(),
            destinationTypes[3]: promotions(),
            destinationTypes[4]: newHotels(),
            destinationTypes[5]: yourFriendsEnjoyed(),
            destinationTypes[6]: trendingNow()
        ]
    }
    
    static func destinationTypes() -> [String] {
        return [
            "Hotels Near You",
            "Your Recent Searches",
            "Top Destinations",
            "Promotions",
            "New Hotels",
            "Your Friends Enjoyed",
            "Trending Now"
        ]
    }
    
    static func hotelsNearYou() -> [Destination] {
        return [
            Destination(title: "Garden Opera", subtitle: "Paris", image: image),
            Destination(title: "Les Piaules", subtitle: "Paris", image: image),
            Destination(title: "Hotel de l'Exposition", subtitle: "Paris", image: image),
            Destination(title: "Hipotel Belgrand", subtitle: "Paris", image: image),
            Destination(title: "Generator Paris", subtitle: "Paris", image: image),
            Destination(title: "Hotel d'Amiens", subtitle: "Paris", image: image)
        ]
    }
    
    static func recentSearches() -> [Destination] {
        return [
            Destination(title: "Bordeaux", subtitle: "France", image: image),
            Destination(title: "Londres", subtitle: "United Kingdom", image: image),
            Destination(title: "Bretagne", subtitle: "France", image: image),
            Destination(title: "Nantes", subtitle: "France", image: image),
            Destination(title: "Rome", subtitle: "Italy", image: image),
            Destination(title: "Nice", subtitle: "France", image: image)
        ]
    }
    
    static func topDestinations() -> [Destination] {
        return [
            Destination(title: "Barcelona", subtitle: "Spain", image: image),
            Destination(title: "Naples", subtitle: "Italy", image: image),
            Destination(title: "Berlin", subtitle: "Germany", image: image),
            Destination(title: "Shiraz", subtitle: "Iran", image: image),
            Destination(title: "Casablanca", subtitle: "Marocco", image: image),
            Destination(title: "Vienna", subtitle: "Austria", image: image)
        ]
    }
    
    static func promotions() -> [Destination] {
        return [
            Destination(title: "Medellin", subtitle: "Colombia", image: image),
            Destination(title: "Delhi", subtitle: "India", image: image),
            Destination(title: "Bali", subtitle: "Indonesia", image: image),
            Destination(title: "Shanghai", subtitle: "China", image: image),
            Destination(title: "Chang Mai", subtitle: "Thailand", image: image),
            Destination(title: "Buenos Aires", subtitle: "Argentina", image: image)
        ]
    }
    
    static func newHotels() -> [Destination] {
        return [
            Destination(title: "Medellin", subtitle: "Colombia", image: image),
            Destination(title: "Delhi", subtitle: "India", image: image),
            Destination(title: "Bali", subtitle: "Indonesia", image: image),
            Destination(title: "Shanghai", subtitle: "China", image: image),
            Destination(title: "Chang Mai", subtitle: "Thailand", image: image),
            Destination(title: "Buenos Aires", subtitle: "Argentina", image: image)
        ]
    }
    
    static func yourFriendsEnjoyed() -> [Destination] {
        return [
            Destination(title: "Medellin", subtitle: "Colombia", image: image),
            Destination(title: "Delhi", subtitle: "India", image: image),
            Destination(title: "Bali", subtitle: "Indonesia", image: image),
            Destination(title: "Shanghai", subtitle: "China", image: image),
            Destination(title: "Chang Mai", subtitle: "Thailand", image: image),
            Destination(title: "Buenos Aires", subtitle: "Argentina", image: image)
        ]
    }
    
    static func trendingNow() -> [Destination] {
        return [
            Destination(title: "Medellin", subtitle: "Colombia", image: image),
            Destination(title: "Delhi", subtitle: "India", image: image),
            Destination(title: "Bali", subtitle: "Indonesia", image: image),
            Destination(title: "Shanghai", subtitle: "China", image: image),
            Destination(title: "Chang Mai", subtitle: "Thailand", image: image),
            Destination(title: "Buenos Aires", subtitle: "Argentina", image: image)
        ]
    }
    
}
