//
//  Categories.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import Foundation

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
}

let categories: [Category] = [
    Category(name: "Pesce azzurro"),
    Category(name: "Pesce bianco")
]
