//
//  ErrorView.swift
//  Layout
//
//  Created by Admin on 25.10.2023.
//

import SwiftUI

struct ErrorView: View {
    
    let retryAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Ошибка")
                .font(.title)
            
            Text("Слишком много :)")
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40).padding()
            Button(action: retryAction, label: {
                Text("Обнулить очки").bold()
            })

        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView {
        }
    }
}
