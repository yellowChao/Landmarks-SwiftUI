//
//  Landmak.swift
//  Landmarks-SwiftUI
//
//  Created by Apple on 2020/7/20.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    
    var id: Int
    var name: String
    private var imageName: String
    private var coordinates: CLLocationCoordinate2D
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
    
}

extension Landmark {
    var image: Image {
        ImageStore.s
    }
}


