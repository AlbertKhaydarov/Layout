//
//  TableWithStackView.swift
//  Layout
//
//  Created by Admin on 25.10.2023.
//

import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    let name: String
    let location: String
    let cost: Double
}

struct ProductRow: View {
    var product: Product
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(product.name)
                Text(product.location).font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text(String(format: "%.2f Руб.", product.cost))
        }
    }
}

struct TableWithStackView: View {
    
    let products = [
        Product(name: "Бумага", location: "Склад 1", cost: 3.90),
        Product(name: "Карандаш", location: "Склад 1", cost: 3.20),
        Product(name: "Линейка", location: "Склад 3", cost: 7.1),
        Product(name: "Транспортир", location: "Склад 1", cost: 4.30),
        Product(name: "Пенал", location: "Склад 5", cost: 5.17),
    ]
    
    var body: some View {
        ScrollView {
//            VStack {
//                ForEach(products) {
//                    product in
//                    ProductRow(product: product)
//
//                }
//            }
            LazyVStack {
                ForEach(products, id: \.id) {
                    product in
                    ProductRow(product: product)
                    
                }
            }
            .padding(16.0)
        }
    }
}

struct TableWithStackView_Previews: PreviewProvider {
    static var previews: some View {
        TableWithStackView()
    }
}
