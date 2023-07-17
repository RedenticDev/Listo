//
//  Settings.swift
//  Listo
//
//  Created on 26/10/2021.
//

import SwiftUI

struct Settings: View {

	@Environment(\.presentationMode) private var presentationMode

	init() {
		UINavigationBar.appearance().largeTitleTextAttributes = [
			.foregroundColor: UIColor(Color.accentColor)
		]
		UINavigationBar.appearance().titleTextAttributes = UINavigationBar.appearance().largeTitleTextAttributes
	}

    var body: some View {
		NavigationView {
			ScrollView {
			}
			.navigationTitle("SETTINGS")
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image(systemName: "multiply.circle")
					}
				}
			}
		}
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
