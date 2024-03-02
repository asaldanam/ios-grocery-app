//
//  ios_grocery_appApp.swift
//  ios-grocery-app
//
//  Created by Abel Saldaña Martínez on 2/3/24.
//

import SwiftUI

@main
struct ios_grocery_appApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(search: .constant(""))
        }
    }
}
