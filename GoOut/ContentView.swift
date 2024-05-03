//

//  ContentView.swift
//  GoOut
//
//  Created by User on 30/04/24.
//

import SwiftUI
import MapKit  // Importando biblioteca do mapa

struct ContentView: View {
    //    var body: some View {
    //        VStack {
    //            Map()   // Inicializando o mapa
    //        }
    //        .mapStyle(.hybrid(elevation: .flat))  // Estilizando o mapa
    
    @State private var mostrarSheet = false
    var body: some View {
        ZStack {
            Map()
                .mapStyle(.hybrid(elevation: .flat))
            
            Button("Mostrar sheet view") {
                mostrarSheet = true
            }
            .fullScreenCover(isPresented: $mostrarSheet) {
//            .sheet(isPresented: $mostrarSheet) {
                SheetView() // Instancia do Componente
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .ignoresSafeArea(.all)
            VStack {
                Text("Esta é minha Sheet View!")
                    .foregroundColor(.white)
                Button("Sair da sheet view") {
                    dismiss()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
