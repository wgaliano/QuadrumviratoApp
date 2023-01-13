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
                    .scaledToFill()
                    .frame(
                        width: UIScreen.main.bounds.width*(4/5),
                        height: UIScreen.main.bounds.height*(1/4)
                    )
                    .cornerRadius(20)
                Text("\(category.name)")
                    .foregroundColor(.white)
                    .offset(x: -88, y: 82)
            }
            
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let category: Category = Category(name: "Pesce azzurro")
        
        CategoryCardView(category: category)
    }
}
