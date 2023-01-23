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
                //                .resizable()
                //                .scaledToFill()
                //                .frame(
                //                    width: UIScreen.main.bounds.width*(3.5/4),
                //                    height: //UIScreen.main.bounds.height*(1.8/4.8)
                //                    UIScreen.main.bounds.height*(0.6)
                //                )
                .cornerRadius(20)
                
                AsyncImage (url: URL(string: (hit?.recipe.image)!)) { image in
                    Text((hit?.recipe.label)!).foregroundColor(.black)
                } placeholder: {
                    
                }
                
                
            }
            .offset(x: offset.width * 1, y: offset.height * 0.4)
//        .rotationEffect(.degrees(Double(offset.width / 40)))
//        .gesture(
//            DragGesture()
//                .onChanged { gesture in
//                    offset = gesture.translation
//                    withAnimation {
//                        changeColor(width: offset.width)
//                    }
//                }
//                .onEnded { _ in
//                    withAnimation {
//                        swipeCard(width: offset.width)
//                        changeColor(width: offset.width)
//                    }
//                }
//        )
    }
    
//    func swipeCard(width: CGFloat) {
//        switch width {
//        case -500...(-150):
//            print("\(String(describing: hit?.recipe.label)) removed")
//            offset = CGSize(width: -500, height: 0)
//        case 150...500:
//            print("\(String(describing: hit?.recipe.label)) added")
//            offset = CGSize(width: 500, height: 0)
//        default:
//            offset = .zero
//        }
//    }
//
//    func changeColor(width: CGFloat) {
//        switch width {
//        case -500...(-130):
//            color = .red
//        case 130...500:
//            color = .green
//        default:
//            color = .black
//        }
//    }
}

//struct FeaturedCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedCardView(hit: )
//    }
//}
