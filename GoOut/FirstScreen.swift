//
//  FirstScreen.swift
//  GoOut
//
//  Created by Leticia Bezerra on 08/05/24.
//

import Foundation
import SwiftUI
import MapKit  // Importando biblioteca do mapa

struct FirstScreen: View {
    
    @State var flag: Bool = false
    @State var detents: PresentationDetent = .height(60)
    @Binding var searchText: String
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(searchText: $searchText)
                List {
                    if self.detents != .height(60) {
                    }
                    //                else {
                    //                    Text("B")
                    //                }
                }
                .listStyle(.plain)
            }
        }
        .presentationDetents([.height(60), .medium], selection: $detents)
    }
}

#Preview {
    ContentView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen(searchText: .constant("")) // Minha View
        }
}
