//
//  ExampleVGridView.swift
//  Layout
//
//  Created by Admin on 25.10.2023.
//

import SwiftUI

struct ExampleVGridView: View {
    var columns: [GridItem] =
    [.init(.fixed(60)),
        .init(.adaptive(minimum: 50, maximum: 100))]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach((0...20), id: \.self) {index in
                   Text("\(index)")
                        .frame(width: 50,
                               height: 50)
                        .background {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.pink)
                        }
                }
            }
            
            .padding(0.0)
            .font(.body)
            
        }

    }
}

struct ExampleVGridView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleVGridView()
    }
}
