//
//  CoursesView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CoursesView: View {
    
    let courses: [Course] = Course.getCourses()
    @State private var selectedCourse: Course?
    @State private var showingCourseSheet = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 0) {
                Text("Courses")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, -170)
                
                
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack () {
                            
                            ForEach(courses) { course in
                                Button{
                                    showingCourseSheet.toggle()
                                    selectedCourse = course
                                } label: {
                                    CourseCardView(course: course)
                                }
                                .padding(.trailing)
                            }
                        }.padding()
                    }
                
            }
        }
    }
}


struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}

