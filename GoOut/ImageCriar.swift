//
//  structsImage.swift
//  GoOut
//
//  Created by Leticia Bezerra on 10/05/24.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    var body: some View {
        HStack {
            //Evento Caiaque
            VStack {
                Image("caiaque")
                    .resizable()
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
                
                Text("Caiaque")
                    .font(.system(size: 20))
            }
            //Botão Mais
            VStack {
                Image("mais")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(20)
                    .padding(.vertical, 3)
                    .overlay(
                        Circle()
                            .foregroundStyle(.fill)
                            .frame(width: 85, height: 85)
                    )

                Text("Adicionar")
                    .font(.system(size: 20))
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    ContentView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen(searchText: .constant("")) // Minha View
        }
}
