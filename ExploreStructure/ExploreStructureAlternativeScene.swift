//
//  ExploreStructureAlternativeScene.swift
//  ExploreStructure
//
//  Created by Administrator on 9/26/24.
//

import SwiftUI

struct ExploreStructureAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }
        
        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif
    }
}

