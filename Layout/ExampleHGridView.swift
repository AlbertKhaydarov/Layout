//
//  ExampleGridView.swift
//  Layout
//
//  Created by Альберт Хайдаров on 25.10.2023.
//

import SwiftUI

struct ExampleHGridView: View {
    var rows: [GridItem] =
    [.init(.adaptive(minimum: 50, maximum: 100))]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 2) {
                ForEach((0...20), id: \.self) {index in
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.pink)
                        .frame(width: 50)
                }
            }
            .font(.body)
        }
    }
}

struct ExampleHGridView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleHGridView()
    }
}
