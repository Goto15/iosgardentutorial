//
//  GardenTutorialApp.swift
//  GardenTutorial
//
//  Created by Ben Sullivan on 9/28/21.
//

import SwiftUI

@main
struct GardenTutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            VegetableListScreen()
        }
    }
}
