//
//  Locations.swift
//  GoOut
//
//  Created by João Pedro Albuquerque on 08/05/24.
//

import Foundation
import MapKit

struct Locations: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    var image: String?
}
