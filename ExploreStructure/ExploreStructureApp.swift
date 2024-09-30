//
//  ExploreStructureApp.swift
//  ExploreStructure
//
//  Created by Administrator on 9/26/24.
//

import SwiftUI

@main
struct ExploreStructureApp: App {
    var body: some Scene {
        #if os(iOS)
        ExploreStructure()
        #elseif os(macOS)
        ExploreStructureAlternativeScene()
        #endif
    }
}
