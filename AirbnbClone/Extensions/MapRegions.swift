//
//  Regions.swift
//  AirbnbClone
//
//  Created by Md Rabbi on 7/11/25.
//

import MapKit

extension MKCoordinateRegion {
    static func region(for coordinate: CLLocationCoordinate2D, span: CLLocationDegrees = 0.1) -> MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        )
    }
}
