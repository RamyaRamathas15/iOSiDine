//
//  OrderView.swift
//  iDine
//
//  Created by Ramya Ramathas on 2022-08-22.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section {
                    NavigationLink(destination:
                        CheckoutView()) {
                        Text("Place Order")
                    }
                }
            }
            .navigationTitle("Order")
            .listStyle(InsetListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
