//
//  ContentView.swift
//  Layout
//
//  Created by Альберт Хайдаров on 25.10.2023.
//

import SwiftUI

struct ExampleStackView: View {
    
    @State var tapCount: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle().foregroundColor(.orange)
//                .layoutPriority(10)
            HStack(spacing: 16) {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .foregroundColor(.mint)
                    .padding()
                
                Image(systemName: "note")
            }
            Button {
                tapCount += 1
            } label: {
                Text("Tap count \(tapCount)")
                    .font(.title)
            }
            Rectangle().foregroundColor(.blue)
                

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleStackView()
    }
}
