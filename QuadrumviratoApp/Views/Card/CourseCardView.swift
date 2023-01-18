//
//  CoursesCardView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CourseCardView: View {
    
    let course: Course
    
    var body: some View {
       
            VStack {
                Image("\(course.name)")
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: UIScreen.main.bounds.width*(4/5),
                        height: UIScreen.main.bounds.height*(1/4)
                    )
                    .cornerRadius(20)
                Text("\(course.name)")
                    .foregroundColor(.black)
                    .bold()
            }
    }
}

struct CourseCardView_Previews: PreviewProvider {
    
    static let course = Course (name: "Main")
    static var previews: some View {
        CourseCardView(course: course)
    }
}

