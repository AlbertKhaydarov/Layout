//
//  GometryReader.swift
//  Layout
//
//  Created by Admin on 25.10.2023.
//

import SwiftUI

struct GometryReader: View {
    @State private var childPos: CGFloat = 0
    var body: some View {
        VStack{
            HStack{
                Text("Offset: \(childPos, specifier: "%.0f")")
                Spacer()
            }
            .padding()
            
            ScrollView{
                GeometryReader { geo in
                    Text("Элемент для отслеживания")
                        .preference(key: SizePreferenceKey.self, value: geo.frame(in: .global).minY)
                }.onPreferenceChange(SizePreferenceKey.self){
                    preference in
                    self.childPos = preference
                }
                
            }
            .padding()
        }
        
    }
}

struct SizePreferenceKey: PreferenceKey {
    
    typealias Value = CGFloat
    static var defaultValue: Value = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> Value) {
        value = nextValue()
    }
}

struct GometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GometryReader()
    }
}
