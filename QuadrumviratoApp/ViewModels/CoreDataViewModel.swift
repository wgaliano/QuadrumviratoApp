//
//  CoreDataViewModel.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 25/01/23.
//

import Foundation
import CoreData
import UIKit

class CoreDataViewModel: ObservableObject {
    let container: NSPersistentContainer
    @Published var recipes: [RecipeEntity] = []
    @Published var ingredients: [IngredientEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "RecipesDataModel")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("ERROR LOADING CORE DATA. \(error)")
            } else {
                print("SUCCESSFULLY LOADED CORE DATA!")
            }
        }
        fetchIngredients()
        fetchRecipes()
    }
    
    func fetchRecipes() {
        let request = NSFetchRequest<RecipeEntity>(entityName: "RecipeEntity")
        
        do {
            recipes = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
    }
    
    func fetchIngredients() {
        let request = NSFetchRequest<IngredientEntity>(entityName: "IngredientEntity")
        
        do {
            ingredients = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
    }
    
    func checkIngredients(info: String) -> Bool {
        for ingr in ingredients {
            if(ingr.info == info) {
                return true
            }
        }
        
        return false
    }
    
    func addIngredient(info: String) {
        let newIngredient = IngredientEntity(context: container.viewContext)
        
        newIngredient.info = info
        
        saveData()
    }
    
    func addRecipe(id: UUID, name: String, calories: Double, totalWeight: Double, ingredients: [IngredientEntity]) {
        let newRecipe = RecipeEntity(context: container.viewContext)
        
        newRecipe.id = id
        newRecipe.name = name
        newRecipe.calories = calories
        newRecipe.totalWeight = totalWeight
        //newRecipe.image = image.jpegData(compressionQuality: 1.0)
        
        newRecipe.ingredients = NSSet(array: ingredients)
        
        saveData()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchIngredients()
            fetchRecipes()
        } catch let error {
            print("Error saving. \(error)")
        }
    }
    
    func deleteRecipe(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let entity = recipes[index]
        container.viewContext.delete(entity)
        
        saveData()
    }
}
