//
//  MapApp.swift
//  Map
//
//  Created by M.Huzaifa on 06/05/2023.
//

import SwiftUI

@main
struct MapApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
