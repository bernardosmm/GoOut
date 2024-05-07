//

//  ContentView.swift
//  GoOut
//
//  Created by User on 30/04/24.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View {
    @State private var cameraPosition: MapCameraPosition = .automatic
    var body: some View {
        Map(position: $cameraPosition)
            .onAppear{
                //-3.731478, -38.531036
                let fortaleza = CLLocationCoordinate2D(latitude: -3.731478, longitude: -38.531036)
                let fortalezaSpan = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
                let fortalezaRegion = MKCoordinateRegion(center: fortaleza, span: fortalezaSpan)
                cameraPosition = .region(fortalezaRegion)
        }
    }
}

#Preview {
    ContentView()
}
