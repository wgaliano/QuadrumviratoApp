//
//  CategoryViewModel.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 18/01/23.
//

import Foundation

class CategoryViewModel: ObservableObject {
    
    @Published var categories: [Category] = [
        Category(name: "Blue fish", image: "Blue fish"),
        Category(name: "White fish", image: "White fish")
    ]
}
