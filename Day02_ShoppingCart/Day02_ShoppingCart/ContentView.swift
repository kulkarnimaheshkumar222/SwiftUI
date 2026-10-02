//
//  ContentView.swift
//  Day02_ShoppingCart
//
//  Created by Mahesh Kulkarni on 02/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var quantity: Int = 0
    var body: some View {
        VStack {
            Text("Shopping Cart")
                .font(.largeTitle)
                .bold()
            Image("apple")
                .resizable()
                .frame(width: 200, height: 200)
            Text("100 Rs / kg")
                .font(.title)
                .padding()
            Text("Quantity: \(quantity)")
                .font(.title)
                .padding()
            Stepper(value: $quantity, in: 0...100) {
                Text("Add to Cart")
                    .font(.title)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
