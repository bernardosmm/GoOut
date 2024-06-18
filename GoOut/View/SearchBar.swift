//
//  SearchBar.swift
//  GoOut
//
//  Created by Leticia Bezerra on 09/05/24.
//

import Foundation
import SwiftUI
import MapKit

struct SearchBar: View {
    
    @Binding var searchText: String
    @FocusState var isFocused: Bool
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(
                        EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 0)
                    )
                TextField("Pesquise um evento...", text: $searchText)
                    .focused($isFocused)
                    .font(.system(size: 20))
            }
            .frame(maxWidth: .infinity, minHeight: 40)
            .background(Color(white: 0.9))
            .cornerRadius(10)
            
            if isFocused {
                Button("Cancel") {
                    isFocused = false
                }
                .transition(.move(edge: .trailing).combined(with: .opacity))
            }
        }
        .animation(.default, value: isFocused)
        .frame(height: 35)
        .padding(.top, 30)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen(searchText: .constant("")) // Minha View
        }
}
