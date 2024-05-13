//
//  ImagemFavoritos.swift
//  GoOut
//
//  Created by Leticia Bezerra on 13/05/24.
//

import Foundation
import SwiftUI

struct FavoritosImage: View {
    var body: some View {
            VStack {
                Image("mais")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(20)
                    .padding(.vertical, 3)
                    .overlay(
                        RoundedRectangle (cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.fill)
                            .frame(width: 85, height: 85)
                    )
                
                Text("Adicionar")
                    .font(.system(size: 20))
            }
        }
    }

#Preview {
    ContentView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen(searchText: .constant("")) // Minha View
        }
}
