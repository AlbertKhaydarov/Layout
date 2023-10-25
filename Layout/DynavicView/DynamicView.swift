//
//  DynamicView.swift
//  Layout
//
//  Created by Admin on 25.10.2023.
//

import SwiftUI

struct DynamicView: View {
    @State var tapCount: Int = 0
    
    var body: some View {
        if tapCount > 5 {
            ErrorView {
                tapCount = 0
            }
        } else {
                makeBody()

        }
        
    
    }
}

extension DynamicView {
    func makeBody() -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .foregroundColor(.mint)
                    .padding()
                
                Image(systemName: "note")
            }
            Button(action: {
                tapCount += 1
            })  {
                Text("Количество нажатий \(tapCount)")
                    .font(.title)
            }
        }
        
    }
}

struct DynamicView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicView()
    }
}
