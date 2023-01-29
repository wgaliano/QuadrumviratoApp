//
//  QuadrumviratoAppApp.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 11/01/23.
//

import SwiftUI

@main
struct QuadrumviratoApp: App {
    @StateObject private var coreDataVM = CoreDataViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coreDataVM)
        }
    }
}
