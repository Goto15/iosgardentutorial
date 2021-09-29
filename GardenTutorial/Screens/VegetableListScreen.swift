//
//  VegetableListScreen.swift
//  GardenTutorial
//
//  Created by Ben Sullivan on 9/28/21.
//

import SwiftUI

struct VegetableListScreen: View {
    
    @StateObject private var vegetableListVM = VegetableListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(vegetableListVM.vegetables, id: \.id) {
                    vegetable in
                    HStack {
                        AsyncImage(url: vegetable.thumbnailUrl) { image in image.resizable().frame(maxWidth: 75, maxHeight: 75)
                        } placeholder: {
                            ProgressView()
                        }
                        Text(vegetable.name)
                    }

                }
            }
            .listStyle(.plain)
            .task {
                await vegetableListVM.getAll()
            }
        }
        .navigationTitle("Green Garden")
        .embedInNavigationView()
    }
}

struct VegetableListScreen_Previews: PreviewProvider {
    static var previews: some View {
        VegetableListScreen()
    }
}
