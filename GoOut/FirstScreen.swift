//
//  FirstScreen.swift
//  GoOut
//
//  Created by Leticia Bezerra on 08/05/24.
//

import Foundation
import SwiftUI
import MapKit  // Importando biblioteca do mapa

//struct ContentView: View {
//
//    @State private var mostrarSheet = false
//
//    var body: some View {
//        ZStack {
//            Map()
//                .mapStyle(.hybrid(elevation: .flat))
//            Button("Mostrar sheet view") {
//                mostrarSheet = true
//            }
//            .fullScreenCover(isPresented: $mostrarSheet) {
////            .sheet(isPresented: $mostrarSheet) {
//            FirstScreen() // Instancia do Componente
//            }
//            .buttonStyle(.borderedProminent)
//        }
//    }
//}

//struct SheetView: View {
//    @Environment(\.dismiss) var dismiss
//
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .fill(.black)
//                .ignoresSafeArea(.all)
//            VStack {
//                Text("Esta é minha Sheet View!")
//                    .foregroundColor(.white)
//                Button("Sair da sheet view") {
//                    dismiss()
//                }
//            }
//        }
//    }
//}

struct FirstScreen: View {
    
    @State var flag: Bool = false
    @State var detents: PresentationDetent = .height(10)
//    @State var searchText = ""
//    @State var seacrhIsActive = false
    
    var body: some View {
        NavigationStack {
        }
        .searchable(text: .constant("Procure por um evento.."))
        .presentationDetents([.height(30), .medium], selection: $detents)
    }
}
//        .searchable(text: .constant("search here"))
//        .presentationDetents([.height(90), .medium], selection: $detents)
    
    //        VStack {
    ////            ScrollView {
    ////                ForEach(0..<15) { _ in
    ////                    Button {
    ////                        flag = !flag
    ////                    } label: {
    ////                        VStack(spacing: 10) {
    ////                            Image(systemName: "swift")
    ////                            Text("Swift is cool")
    ////                        }
    ////                        .padding()
    ////                        .background {
    ////                            RoundedRectangle(cornerRadius: 11)
    ////                                .fill(detents == .medium ? .orange : .blue)
    ////                        }
    ////                    }
    ////                    .foregroundStyle(.white)
    ////                }
//                }.sheet(isPresented: $flag, content: { // cifrao é um Binding pra um State. É parte de como um property wrapper funciona. @State é um property wrapper.
//                    NavigationStack {
//                        Text("Aaaa")
//                            .navigationTitle("AAAA")
//                            .navigationBarTitleDisplayMode(.inline)
//                    }
//                    .searchable(text: .constant("search here"))
//                    .presentationDetents([.height(90), .medium], selection: $detents)
//                })
//            }

#Preview {
    PreviewMapView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen() // Minha View
                .presentationDetents([.height(100), .medium])
        }
}

struct PreviewMapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -3.7442604368944856, longitude: -38.53568772387148),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}
