//
//  NewProject.swift
//  Listo
//
//  Created on 27/10/2021.
//

import SwiftUI

struct NewProject: View {
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
			.navigationTitle("NEW_PROJECT")
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

struct NewProject_Previews: PreviewProvider {
    static var previews: some View {
        NewProject()
    }
}
