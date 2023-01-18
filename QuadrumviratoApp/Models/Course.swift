//
//  Course.swift
//  QuadrumviratoApp
//
//  Created by Francesco Merola on 13/01/23.
//

import Foundation

struct Course: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let image: String
}
