//
//  ExploreStructure.swift
//  ExploreStructure
//
//  Created by Administrator on 9/26/24.
//

import SwiftUI

struct ExploreStructure: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}

