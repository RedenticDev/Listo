//
//  MeTab.swift
//  Listo
//
//  Created on 24/10/2021.
//

import SwiftUI

struct MeTab: View {
	@State private var showSheet = false

	init() {
		UINavigationBar.appearance().largeTitleTextAttributes = [
			.foregroundColor: UIColor(Color.accentColor)
		]
		UINavigationBar.appearance().titleTextAttributes = UINavigationBar.appearance().largeTitleTextAttributes
	}

	var body: some View {
		NavigationView {
			Form {
				HStack {
					Image(systemName: "person.circle")
						.resizable()
						.scaledToFit()
						.padding(10)
					Text("NAME")
						.font(.system(size: 40))
				}
				.frame(height: 100)
				MeCell(title: "Repo", subtitle: "https://")
				MeCell(title: "GitHub", subtitle: "")
				MeCell(title: "Twitter", subtitle: "@")
				MeCell(title: "Reddit", subtitle: "u/")
			}
			.navigationTitle("ME")
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Button {
						showSheet.toggle()
					} label: {
						Image(systemName: "info.circle")
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Menu {
						Button {} label: {
							Text("Share")
						}
					} label: {
						Image(systemName: "square.and.arrow.up")
							.imageScale(.large)
					}
				}
			}
			.sheet(isPresented: $showSheet) {
				Settings()
			}
		}
	}
}

struct MeTab_Previews: PreviewProvider {
    static var previews: some View {
        MeTab()
    }
}
