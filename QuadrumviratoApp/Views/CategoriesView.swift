//
//  CategoriesView.swift
//  ECS
//
//  Created by Francesco Merola on 11/01/23.
//

import SwiftUI

struct CategoriesView: View {
    
    var categories = Category.getCategories()
    var courses: [Course] = Course.getCourses()
    
    @State private var showCategoryModal: Bool = false
    @State private var selectedCategory: Category?
    
    @State private var selectedCourse: Course?
    @State private var showingCourseSheet = false
    
    var body: some View {
        NavigationStack {
            VStack (spacing: -8) {
                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, -170)
                
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 16) {
                            
                            ForEach(categories) { category in
                                Button {
                                    showCategoryModal.toggle()
                                    selectedCategory = category
                                } label: {
                                    CategoryCardView (category: category)
                                }
                                .padding(.trailing)
                            }
                            
                        }.padding()
                    }
                
                Text("Courses")
                    .font(.title2)
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
            .navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
