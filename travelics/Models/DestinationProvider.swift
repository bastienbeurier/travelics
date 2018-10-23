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
            Destination(title: "Garden Opera", subtitle: "Paris", image: "https://www.telegraph.co.uk/content/dam/Travel/leadAssets/35/56/shangri-la-paris_3556756a.jpg?imwidth=450"),
            Destination(title: "Les Piaules", subtitle: "Paris", image: "https://www.telegraph.co.uk/content/dam/Travel/hotels/europe/france/paris/l%27hotel-paris-balcony.jpg?imwidth=450"),
            Destination(title: "Hotel de l'Exposition", subtitle: "Paris", image: "https://www.aparisguide.com/hotels/paris-hotel-recamier-3.jpg"),
            Destination(title: "Hipotel Belgrand", subtitle: "Paris", image: "https://media-cdn.tripadvisor.com/media/photo-s/07/5d/cb/51/hotel-paris.jpg"),
            Destination(title: "Generator Paris", subtitle: "Paris", image: "https://t-ec.bstatic.com/xdata/images/hotel/square128/150430332.jpg?k=6f904d5077efa1e23e47f77868cadf8b7109378fbbe10dd216dfe806a1cec000&o="),
            Destination(title: "Hotel d'Amiens", subtitle: "Paris", image: "https://s-ec.bstatic.com/xdata/images/hotel/square128/76790908.jpg?k=218ef17cb34968e050f9b87eee5ac0ac21022fcfec97e50b97b37b9796a4954b&o=")
        ]
    }
    
    static func recentSearches() -> [Destination] {
        return [
            Destination(title: "Bordeaux", subtitle: "France", image: "https://learn.winecoolerdirect.com/wp-content/uploads/2016/07/bordeaux-vineyard.jpg"),
            Destination(title: "Londres", subtitle: "United Kingdom", image: "https://static.service-voyages.com/photos/vacances-angleterre/londres/generique_381276_pgbighd.jpg"),
            Destination(title: "Bretagne", subtitle: "France", image: "https://images.easyreserve.fr/ccontent_page/1272511457455478xx/large/brittany-landscape-768x480.jpg"),
            Destination(title: "Nantes", subtitle: "France", image: "https://www.middleburyinteractive.com/sites/default/files/styles/teaser_thumb_2x/public/France_Loir-et-Cher_Chambord_Chateau_03_0.jpg?itok=pgTWKtrr&timestamp=1482528892"),
            Destination(title: "Rome", subtitle: "Italy", image: "https://cdn.britannica.com/s:s:300x200/15/99615-004-2ABD0EFE.jpg"),
            Destination(title: "Nice", subtitle: "France", image: "https://media.novinky.cz/026/610264-gallery1-ibysp.jpg")
        ]
    }
    
    static func topDestinations() -> [Destination] {
        return [
            Destination(title: "Barcelona", subtitle: "Spain", image: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Spain/Barcelona/barcelona-guide-lead.jpg?imwidth=480"),
            Destination(title: "Naples", subtitle: "Italy", image: "https://www.oui.sncf/sites/default/files/imagecache/hermes-580x440/files/voyazine_article/img/2017_12_08/vue-istock-leonid-andronov_vsc.jpg"),
            Destination(title: "Berlin", subtitle: "Germany", image: "https://www.telegraph.co.uk/content/dam/property/Spark/JLL/Berlin-centre.jpg?imwidth=450"),
            Destination(title: "Shiraz", subtitle: "Iran", image: "https://www.oicyouthcapital.com/wp-content/uploads/2017/03/shirazz.jpg"),
            Destination(title: "Casablanca", subtitle: "Marocco", image: "https://www.omanair.com/sites/default/files/content/special_deals/images/Casablanca-offer-banner.jpg"),
            Destination(title: "Vienna", subtitle: "Austria", image: "https://roadscholar-iv-prod.azureedge.net/publishedmedia/hi65kc8kks4okgwdjabo/22960-city-walks-vienna-austria-lghoz.jpg")
        ]
    }
    
    static func promotions() -> [Destination] {
        return [
            Destination(title: "Medellin", subtitle: "Colombia", image: "https://www.thetimes.co.uk/imageserver/image/methode%2Ftimes%2Fprod%2Fweb%2Fbin%2F8a2b1408-9c54-11e6-af4a-15a7db50bae8.jpg?crop=1493%2C840%2C4%2C80&resize=685"),
            Destination(title: "Delhi", subtitle: "India", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4bOWF-f0K4SNIuODWeN_0JvU-OrWGkG6TGdks1m9azJwpLzZe5w"),
            Destination(title: "Bali", subtitle: "Indonesia", image: "https://media.timeout.com/images/105240189/630/472/image.jpg"),
            Destination(title: "Shanghai", subtitle: "China", image: "https://media.routard.com/image/78/4/shanghai-financial-district.1512784.w740.jpg"),
            Destination(title: "Chang Mai", subtitle: "Thailand", image: "https://media.timeout.com/images/105240238/630/472/image.jpg"),
            Destination(title: "Buenos Aires", subtitle: "Argentina", image: "https://kcai.edu/wp-content/uploads/2016/02/buenos-aires-argentina.jpg")
        ]
    }
    
    static func newHotels() -> [Destination] {
        return [
            Destination(title: "Hotel de l'Exposition", subtitle: "Paris", image: "https://www.telegraph.co.uk/content/dam/Travel/leadAssets/35/56/shangri-la-paris_3556756a.jpg?imwidth=450"),
            Destination(title: "Hotel du Nord", subtitle: "Paris", image: "https://www.telegraph.co.uk/content/dam/Travel/hotels/europe/france/paris/l%27hotel-paris-balcony.jpg?imwidth=450"),
            Destination(title: "Hotel Coeur de Lion", subtitle: "Paris", image: "https://www.aparisguide.com/hotels/paris-hotel-recamier-3.jpg"),
            Destination(title: "Hotel Bohème", subtitle: "Paris", image: "https://media-cdn.tripadvisor.com/media/photo-s/07/5d/cb/51/hotel-paris.jpg"),
            Destination(title: "Hotel Atalante", subtitle: "Paris", image: "https://t-ec.bstatic.com/xdata/images/hotel/square128/150430332.jpg?k=6f904d5077efa1e23e47f77868cadf8b7109378fbbe10dd216dfe806a1cec000&o="),
            Destination(title: "Hotel d'Iéna", subtitle: "Paris", image: "https://s-ec.bstatic.com/xdata/images/hotel/square128/76790908.jpg?k=218ef17cb34968e050f9b87eee5ac0ac21022fcfec97e50b97b37b9796a4954b&o=")
        ]
    }
    
    static func yourFriendsEnjoyed() -> [Destination] {
        return [
            Destination(title: "Cuzco", subtitle: "Peru", image: "https://www.boletomachupicchu.com/gutblt/wp-content/images/cusco-cuzco-3.jpg"),
            Destination(title: "Iquitos", subtitle: "Peru", image: "https://tourthetropics.com/wp-content/uploads/2017/07/Iquitos-Jungle-Lodges-TahuayoLodgeAB-7-17.jpg"),
            Destination(title: "Pokhara", subtitle: "Nepal", image: "https://d3hne3c382ip58.cloudfront.net/resized/750x420/ghandruk-loop-trek-from-pokhara-tour-2-20893_1510029029.JPG"),
            Destination(title: "Beijing", subtitle: "China", image: "https://media.cntraveler.com/photos/5575ef9b3a5d79a77fcc863d/4:3/w_480,c_limit/temple-of-heaven-cr-getty.jpg"),
            Destination(title: "Tokyo", subtitle: "Japan", image: "https://www.japan-guide.com/thumb/XYZeXYZe3064_375.jpg"),
            Destination(title: "Sidney", subtitle: "Australia", image: "https://mapi15rc.azureedge.net/media/libraries/images/sydney.jpg?width=300&height=211")
        ]
    }
    
    static func trendingNow() -> [Destination] {
        return [
            Destination(title: "Vancouver", subtitle: "Canada", image: "https://assets.simpleviewcms.com/simpleview/image/upload/c_fill,h_361,q_60,w_641/v1/clients/vancouverbc/summer_video_still_818c9675-8785-4071-af71-22045ccaa0da.jpg"),
            Destination(title: "New Orleans", subtitle: "United-States", image: "https://www.telegraph.co.uk/content/dam/Travel/2018/May/new-orleans-GettyImages-678716867-xlarge.jpg"),
            Destination(title: "Stockholm", subtitle: "Sweden", image: "https://9qjzgzbyth-flywheel.netdna-ssl.com/wp-content/uploads/2014/08/stockholm-travel-guide.jpg"),
            Destination(title: "Athens", subtitle: "Grece", image: "https://media.cntraveler.com/photos/5ad0ca78fb3e8334dea6e22e/4:3/w_480,c_limit/GettyImages-88786323.jpg"),
            Destination(title: "Saint-Petersbourg", subtitle: "Russia", image: "https://www.thoughtco.com/thmb/WjU-mqdl4TMu9VJehyWg567TRNw=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/church-on-spilled-blood-452532179-58dea4e23df78c5162de50f9.jpg"),
            Destination(title: "Prague", subtitle: "Czech Republic", image: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/06/20/09/prague-overview.jpg?w968h681")
        ]
    }
    
}
