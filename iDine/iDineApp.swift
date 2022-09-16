//
//  iDineApp.swift
//  iDine
//
//  Created by Ramya Ramathas on 2022-08-12.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
