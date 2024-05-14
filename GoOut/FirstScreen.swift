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
    @State var detents: PresentationDetent = .medium//.height(60)
    @Binding var searchText: String
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(searchText: $searchText)
                List {
                    // Inicio Criados
                    Group {
                        Section {
                            VStack {
                                CircleImage()
                            } .padding(10)
                        } header: {
                            HStack {
                                Text("Criados")
                                    .font(.system(size: 20))
                                    .bold()
                                Spacer()
                                Button("Mais") {
                                }
                                .font(.system(size: 20))
                            }
                        }
                        .textCase(nil)
                    }
                    .listRowSeparator(.hidden)
<<<<<<< HEAD
                // Início favoritos
=======
                    // Início favoritos
>>>>>>> 8147497 (Correção warnings)
                    Group {
                        Section {
                            VStack {
                                FavoritosImage()
                            } .padding(10)
                        } header: {
                            HStack {
                                Text("Favoritos")
                                    .font(.system(size: 20))
                                    .bold()
                                Spacer()
                                Button("Mais") {
                                    
                                }
                                .font(.system(size: 20))
                            }
                        }
                        .textCase(nil)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.insetGrouped)
                .opacity(self.detents != .height(60) ? 1 : 0)
<<<<<<< HEAD
            } 
=======
            }
            .background(Color(uiColor: .systemBackground))
>>>>>>> 8147497 (Correção warnings)
        }
        .presentationDetents([.height(60), .medium, .large], selection: $detents)
    }
}

#Preview {
    ContentView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen(searchText: .constant("")) // Minha View
        }
}
