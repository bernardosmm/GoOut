//

//  ContentView.swift
//  GoOut
//
//  Created by User on 30/04/24.
//

import SwiftUI
import MapKit  // Importando biblioteca do mapa

struct ContentView: View {
    var body: some View {
        VStack {
            Map()   // Inicializando o mapa
        }
        .mapStyle(.hybrid(elevation: .flat))  // Estilizando o mapa
    }

}

#Preview {
    ContentView()
}
