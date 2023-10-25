//
//  ListView.swift
//  Layout
//
//  Created by Альберт Хайдаров on 25.10.2023.
//

import SwiftUI

struct CourseCategory: Identifiable {
    let id = UUID()
    var title = ""
    var subCategory: [CourseCategory]?
}

struct ListView: View {
     
    var body: some View {
        List(CourseCategory.sample, children: \.subCategory) {
            category in
            Text(category.title)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

extension CourseCategory {
    static var sample: [CourseCategory]{
        [CourseCategory(title: "IOS Development", subCategory: [
            CourseCategory(title: "SwiftUI"),
            CourseCategory(title: "UIKit")
        ]),
         CourseCategory(title: "Web Development", subCategory: [
             CourseCategory(title: "Angular"),
             CourseCategory(title: "Flutter"),
             CourseCategory(title: "React")
         ])
         ]
    }
}
