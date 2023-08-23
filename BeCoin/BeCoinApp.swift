//
//  BeCoinApp.swift
//  BeCoin
//
//  Created by André Porto on 18/08/23.
//

import SwiftUI

@main
struct BeCoinApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .toolbar(.hidden)
            }
            .environmentObject(vm)
        }
    }
}
