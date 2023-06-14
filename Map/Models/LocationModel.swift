//
//  LocationModel.swift
//  Map
//
//  Created by M.Huzaifa on 06/05/2023.
//

import Foundation
import MapKit

struct LocationModel: Identifiable, Equatable {

    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        // name = "colosseum"
        // cityName = "Rome"
        // id = "colosseumRome"
        name + cityName
    }
    
    // Equatable
    static func == (lhs: LocationModel, rhs: LocationModel) -> Bool {
        lhs.id == rhs.id
    }
}
