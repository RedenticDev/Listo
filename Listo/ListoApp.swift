//
//  ListoApp.swift
//  Listo
//
//  Created on 23/10/2021.
//

import SwiftUI

@main
struct ListoApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    var body: some Scene {
        WindowGroup {
			MainView()
        }
    }
}
