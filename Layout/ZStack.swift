//
//  ZStack.swift
//  Layout
//
//  Created by Альберт Хайдаров on 25.10.2023.
//

import SwiftUI

struct ExampleZStack: View {
    var body: some View {
//        ZStack {
//
//            Rectangle().foregroundColor(.mint)
//
//            Image(systemName: "globe.europe.africa")
//                .font(.system(size: 300))
//
//            Text("Africa")
//                .font(.system(size: 25))
//                .foregroundColor(.orange)
//        }
//
//        ScrollView {
//            Image(systemName: "globe.europe.africa")
//                            .font(.system(size: 300))
//                            .background{
//                                Rectangle().foregroundColor(.mint)
//                            }
//
//                        Text("Africa")
//                            .font(.system(size: 25))
//                            .foregroundColor(.orange)
//        }
        
         ScrollView {
             Image(systemName: "globe.europe.africa")
                             .font(.system(size: 300))
                             .overlay{
                                 Rectangle().foregroundColor(.mint)
                             }
             
                         Text("Africa")
                             .font(.system(size: 25))
                             .foregroundColor(.orange)
         }
        
    }
}

struct ExampleZStack_Previews: PreviewProvider {
    static var previews: some View {
        ExampleZStack()
    }
}
