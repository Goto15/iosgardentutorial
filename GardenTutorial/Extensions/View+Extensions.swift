//
//  View+Extensions.swift
//  GardenTutorial
//
//  Created by Ben Sullivan on 9/28/21.
//

import Foundation
import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
