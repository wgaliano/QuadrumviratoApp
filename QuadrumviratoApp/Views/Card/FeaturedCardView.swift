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
                    image
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(.black)
                        .frame(
                            width: UIScreen.main.bounds.width*(3.5/4),
                            height: UIScreen.main.bounds.height*(0.6)
                        )
                        .brightness(-0.3)
                        .overlay(
                            Text((hit?.recipe.label)!)
                                .foregroundColor(.white)
                                .bold()
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .frame(maxHeight: .infinity, alignment: .bottom)
                                .padding()
                        )
                } placeholder: {
                    ProgressView()
                        .frame(
                            width: UIScreen.main.bounds.width*(3.5/4),
                            height: UIScreen.main.bounds.height*(0.6)
                        )
                        .padding()
                }
                .cornerRadius(20)
                
//                AsyncImage (url: URL(string: (hit?.recipe.image)!)) { image in
//                    Text((hit?.recipe.label)!)
//                        .foregroundColor(.black)
//                        .bold()
//                        .font(.title2)
//                        .onTapGesture {
//                            //do nothing
//                        }
//                } placeholder: {
//
//                }
                
            }
            // .offset(x: offset.width * 1, y: offset.height * 0.4)
    }
}

// struct FeaturedCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedCardView(hit: )
//    }
// }
