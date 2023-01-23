//
//  RecipeJSON.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 19/01/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let recipeJSON = try? JSONDecoder().decode(RecipeJSON.self, from: jsonData)

import Foundation

// MARK: - RecipeJSON
struct RecipeJSON: Codable {
    let from, to, count: Int
    let links: RecipeJSONLinks
    let hits: [Hit]

    enum CodingKeys: String, CodingKey {
        case from, to, count
        case links = "_links"
        case hits
    }
}

// MARK: - Hit
struct Hit: Codable, Identifiable {
    var id = UUID()
    
    let recipe: Recipe
    let links: HitLinks

    enum CodingKeys: String, CodingKey {
        case recipe
        case links = "_links"
    }
}

// MARK: - HitLinks
struct HitLinks: Codable {
    let linksSelf: Next

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

// MARK: - Next
struct Next: Codable {
    let href: String
    @NilOnFail var title: Title?
}

enum Title: String, Codable {
    case nextPage = "Next page"
    case titleSelf = "Self"
}

// MARK: - Recipe
struct Recipe: Codable {
    let uri: String
    let label: String
    let image: String
    let images: Images
    let source: String
    let url: String
    let shareAs: String
    let yield: Int
    let dietLabels: [DietLabel]
    let healthLabels: [String]
    let cautions: [Caution]
    let ingredientLines: [String]
    let ingredients: [Ingredient]
    let calories, totalWeight: Double
    let totalTime: Int
    let cuisineType: [String]
    let mealType: [MealType]
    let dishType: [DishType]
    let totalNutrients, totalDaily: [String: Total]
    let digest: [Digest]
}

enum Caution: String, Codable {
    case fodmap = "FODMAP"
    case gluten = "Gluten"
    case sulfites = "Sulfites"
    case wheat = "Wheat"
}

enum DietLabel: String, Codable {
    case highFiber = "High-Fiber"
    case highProtein = "High-Protein"
    case lowCarb = "Low-Carb"
    case lowSodium = "Low-Sodium"
}

// MARK: - Digest
struct Digest: Codable {
    let label, tag: String
    let schemaOrgTag: SchemaOrgTag?
    let total: Double
    let hasRDI: Bool
    let daily: Double
    @NilOnFail var unit: Unit?
    let sub: [Digest]?
}

enum SchemaOrgTag: String, Codable {
    case carbohydrateContent = "carbohydrateContent"
    case cholesterolContent = "cholesterolContent"
    case fatContent = "fatContent"
    case fiberContent = "fiberContent"
    case proteinContent = "proteinContent"
    case saturatedFatContent = "saturatedFatContent"
    case sodiumContent = "sodiumContent"
    case sugarContent = "sugarContent"
    case transFatContent = "transFatContent"
}

enum Unit: String, Codable {
    case empty = "%"
    case g = "g"
    case kcal = "kcal"
    case mg = "mg"
    case µg = "µg"
}

enum DishType: String, Codable {
    case mainCourse = "main course"
    case starter = "starter"
}

// MARK: - Images
struct Images: Codable {
    let thumbnail, small, regular: Large
    let large: Large?

    enum CodingKeys: String, CodingKey {
        case thumbnail = "THUMBNAIL"
        case small = "SMALL"
        case regular = "REGULAR"
        case large = "LARGE"
    }
}

// MARK: - Large
struct Large: Codable {
    let url: String
    let width, height: Int
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let text: String
    let quantity: Double
    let measure: Measure?
    let food: String
    let weight: Double
    let foodCategory: FoodCategory?
    let foodID: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case text, quantity, measure, food, weight, foodCategory
        case foodID = "foodId"
        case image
    }
}

enum FoodCategory: String, Codable {
    case cannedFruit = "canned fruit"
    case cannedSoup = "canned soup"
    case condimentsAndSauces = "Condiments and sauces"
    case dairy = "Dairy"
    case fruit = "fruit"
    case grains = "grains"
    case oils = "Oils"
    case poultry = "Poultry"
    case the100Juice = "100% juice"
    case vegetables = "vegetables"
    case water = "water"
    case wines = "wines"
}

enum Measure: String, Codable {
    case baby = "baby"
    case clove = "clove"
    case cup = "cup"
    case gram = "gram"
    case ounce = "ounce"
    case piece = "piece"
    case pinch = "pinch"
    case pound = "pound"
    case serving = "serving"
    case sprig = "sprig"
    case tablespoon = "tablespoon"
    case teaspoon = "teaspoon"
    case unit = "<unit>"
}

enum MealType: String, Codable {
    case lunchDinner = "lunch/dinner"
}

// MARK: - Total
struct Total: Codable {
    let label: String
    let quantity: Double
    @NilOnFail var unit: Unit?
}

// MARK: - RecipeJSONLinks
struct RecipeJSONLinks: Codable {
    let next: Next
}
@propertyWrapper public struct NilOnFail<T: Codable>: Codable {
    
    public let wrappedValue: T?
    public init(from decoder: Decoder) throws {
        wrappedValue = try? T(from: decoder)
    }
    public init(_ wrappedValue: T?) {
        self.wrappedValue = wrappedValue
    }
}


