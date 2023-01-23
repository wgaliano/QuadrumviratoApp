//
//  CardView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct FeaturedCardView: View {
    
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    let hit: Hit?
    
    var body: some View {
            VStack {
                AsyncImage(url: URL(string: (hit?.recipe.image)!)) { image in
                    image.foregroundColor(.black)
                } placeholder: {
                    Text("Loading...")
                        .foregroundColor(.black)
                        .frame(width: UIScreen.main.bounds.width*(3.5/4),
                               height: UIScreen.main.bounds.height*(0.6))
                }
                .cornerRadius(20)
                
                AsyncImage (url: URL(string: (hit?.recipe.image)!)) { image in
                    Text((hit?.recipe.label)!).foregroundColor(.black)
                        .onTapGesture {
                            //do nothing
                        }
                } placeholder: {
                    
                }
                
                
            }
            //.offset(x: offset.width * 1, y: offset.height * 0.4)
    }
}

//struct FeaturedCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedCardView(hit: )
//    }
//}
