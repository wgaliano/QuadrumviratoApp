//
//  FeaturedView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct FeaturedView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Featured")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, -160)
                
                ScrollView (.horizontal) {
                    HStack {
                        
                        ForEach(recipes, id:\.self) { recipe in
                            FeaturedCardView (recipe: recipe)
                        }
                    }
                }
                
                
                
                Spacer()
            }
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
