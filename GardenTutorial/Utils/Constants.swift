//
//  Constants.swift
//  GardenTutorial
//
//  Created by Ben Sullivan on 9/28/21.
//

import Foundation
import SwiftUI

struct Constants {
    struct Urls {
        static let getAllVegetables = URL(string: "http://highoncoding.com/vegetable/getcatalog")
    }
    
    struct Colors {
        static let lightGreyRowColor = Color(#colorLiteral(red: 0.945, green: 0.952, blue: 0.956, alpha: 1))
        static let lightBlueRowColor = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    }
}
