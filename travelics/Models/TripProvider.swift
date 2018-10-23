//
//  TripProvider.swift
//  travelics
//
//  Created by Bastien Beurier on 10/22/18.
//  Copyright © 2018 Bastien Beurier. All rights reserved.
//

import UIKit

class TripProvider: NSObject {
    
    static let image = "https://ihg.scene7.com/is/image/ihg/holiday-inn-the-colony-4629618286-16x5?hei=512"
    
    static func upcomingTrips() -> [Trip] {
        return [
            Trip(title: "Tunis", image: "https://cdn.britannica.com/s:700x450/68/192668-004-606C9F6C.jpg"),
            Trip(title: "Cairo", image: "https://www.tripsavvy.com/thmb/vzFlIekvNV7UWvMOzPGdFx7bkrg=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-164198408-5a9cf913ae9ab8003706b3f8.jpg"),
            Trip(title: "Jerusalem", image: "https://thenypost.files.wordpress.com/2018/08/jerusalem-israel-feature.jpg?quality=90&strip=all&w=618&h=410&crop=1"),
            Trip(title: "Petra", image: "https://d3hne3c382ip58.cloudfront.net/resized/750x420/day-tour-to-petra-jordan-tour-2-323661_1510902889.JPG"),
            Trip(title: "Tehran", image: "https://static.timesofisrael.com/www/uploads/2013/12/shutterstock_109070147-1.jpg"),
            Trip(title: "Istanbul", image: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Turkey/Istanbul%20lead-xlarge.jpg"),
            Trip(title: "Marrakesh", image: "https://gaytravel-destinations.s3.amazonaws.com/31870/marrakesh,_morocco_(8141946786)__large.jpg"),
            Trip(title: "Capri", image: "https://www.motoscafisticapri.com/images/motoscafisti_1_g.jpg"),
            Trip(title: "Florence", image: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Italy/Florence/Florence%20edit-xlarge.jpg"),
            Trip(title: "Venice", image: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Italy/Venice/venice-restaurants-2-xlarge.jpg")
        ]
    }
    
    static func savedTrips() -> [Trip] {
        return [
            Trip(title: "San Francisco", image: "https://amp.businessinsider.com/images/58f4e5ebf40daef5008b4bb4-750-500.jpg"),
            Trip(title: "Los Angeles", image: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/North%20America/USA/California/los%20angeles/Los%20Angeles%20lead-xlarge.jpg"),
            Trip(title: "Seattle", image: "https://static01.nyt.com/images/2018/07/15/travel/15Hours-Seattle1/merlin_140454948_cc7d0eb6-88a0-49bd-9194-d03fedc7f538-articleLarge.jpg?quality=75&auto=webp&disable=upscale"),
            Trip(title: "Portland", image: "https://upload.wikimedia.org/wikipedia/commons/f/fa/Portland%2C_OR_and_Mount_Hood_from_Pittock_Mansion.jpg"),
            Trip(title: "Austin", image: "https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/austin/Austin_Boardwalk_Photo_Credit_Arts_Labor_Internal_Use_Only_Request_Permissions_47b72dcc-3318-4990-8bd8-6f988525becb.jpg"),
            Trip(title: "Savannah", image: "https://roadscholar-iv-prod.azureedge.net/publishedmedia/otowi3v6yqh6lbdm5807/21296-savannah-georgia-film-festival-lghoz.jpg"),
            Trip(title: "Chicago", image: "https://www.trumphotels.com/uploads/17827/0/cloudinary/trump-hotels-cloudinary/image/upload/x_72,y_43,w_1296,h_787,c_crop/c_fill,w_1440,ar_180:109,g_auto/v1523903689/cxv0a0hnliruhogsn8x5.jpg"),
            Trip(title: "Detroit", image: "https://knightfoundation.imgix.net/communities/images/000/000/008/original/downtown.jpg?ixlib=rails-1.1.0&h=460&w=1070&fit=crop&crop=faces,entropy&auto=format"),
            Trip(title: "Montreal", image: "https://www.telegraph.co.uk/content/dam/Travel/2017/May/montreal-cityscape.jpg?imwidth=450"),
            Trip(title: "Toronto", image: "https://cdn.torontolife.com/wp-content/uploads/2016/10/toronto-skyline-803x603-1476458932.jpg")
        ]
    }
}
