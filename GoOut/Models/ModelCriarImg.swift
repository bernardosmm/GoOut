//
//  structsImage.swift
//  GoOut
//
//  Created by Leticia Bezerra on 10/05/24.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    
    let image: String
    let text: String
    
    var body: some View {
        ZStack {
            Image(systemName: image)
                .resizable()
                .frame(width: 85, height: 85)
                .clipShape(Circle())
                
            Text(text)
                .font(.system(size: 20))
        }
//            .padding(.horizontal, 10)
    }
}

#Preview {
    ContentView() // View do Bernardo com Pedro
        .sheet(isPresented: .constant(true)) {
            FirstScreen(searchText: .constant("")) // Minha View
        }
}
