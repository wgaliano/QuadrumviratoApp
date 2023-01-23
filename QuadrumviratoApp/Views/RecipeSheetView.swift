//
//  RecipeSheetView.swift
//  QuadrumviratoApp
//
//  Created by Walter Galiano on 12/01/23.
//

import SwiftUI

struct RecipeSheetView: View {
    var hit: Hit
    @Environment(\.presentationMode) var presentationMode
    @State private var closeModal = false
    @State private var buttonTapped: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //section ingredients
//                    VStack {
//                        Text("Ingredients")
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                        VStack (spacing: -10){
//                            ForEach(hit.recipe.ingredientLines.indices) {
//                                HStack {
//                                    Spacer()
//                                        .frame(width: 25)
//                                    Circle()
//                                        .frame(width: 10)
//                                        .offset(y:-10)
//                                    Text("\(ingredient.name)\n")
//                                        .frame(maxWidth: .infinity, alignment: .leading)
//                                }
//                            }
//                        }
//                    }
//                    .padding(.top)
//                    .padding(.horizontal)
                    
                    //section description
                    VStack {
                        Text("Brief description")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ForEach(hit.recipe.ingredientLines.indices) {
                            Text(hit.recipe.ingredientLines[$0])
                        }
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    //section process
//                    VStack {
//                        Text("Process")
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                        Text(recipe.process)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                    .padding(.top)
//                    .padding(.horizontal)
                }
                .navigationTitle(hit.recipe.label)
                .navigationBarItems(trailing: Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                })
                .navigationBarItems(leading: Button {
                    buttonTapped.toggle()
                } label: {
                    if buttonTapped {
                        Image(systemName: "heart.fill")
                    } else {
                        Image(systemName: "heart")
                    }
                })
            }
        }
    }
}

//struct RecipeSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeSheetView(hit:)
//    }
//}
