//
//  CardView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CategoryCardView: View {
    
    let category: Category
    
    var body: some View {
       
            ZStack {
                Image("\(category.name)")
                    .resizable()
                Text("\(category.name)")
                    .foregroundColor(.white)
                    .offset(x: -65, y: 70)
            }
            .cornerRadius(20)
            .padding()
            .frame(width: 300,height: 215)
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let category: Category = Category(name: "Pesce azzurro")
        
        CategoryCardView(category: category)
    }
}
