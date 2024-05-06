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
    @State private var isSheetPresented = false
    @State private var name = ""
    let praiaDoNautico = CLLocationCoordinate2D(latitude: -3.7246985883163584, longitude: -38.491181818998)
    var body: some View {
        Map() {
            Marker("Passeio de Caiaque", coordinate: praiaDoNautico)
                .tint(.yellow)
        }
    }
}

#Preview {
    ContentView()
}
