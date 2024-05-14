//
//  GoOutApp.swift
//  GoOut
//
//  Created by User on 30/04/24.
//

import SwiftUI

@main
struct GoOutApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView() // View do Bernardo com Pedro
                .sheet(isPresented: .constant(true)) {
                    FirstScreen(searchText: .constant("")) // Minha View
                }
        }
    }
}
