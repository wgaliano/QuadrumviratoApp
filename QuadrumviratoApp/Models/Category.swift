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
    let image: String
}
