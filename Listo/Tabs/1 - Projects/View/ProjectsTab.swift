//
//  ContentView.swift
//  Listo
//
//  Created on 23/10/2021.
//

import SwiftUI

struct ProjectsTab: View {
	@State private var text = ""
	@State private var showSheet = false
	@State private var sortChoice = 0

	init() {
		UINavigationBar.appearance().largeTitleTextAttributes = [
			.foregroundColor: UIColor(Color.accentColor)
		]
		UINavigationBar.appearance().titleTextAttributes = UINavigationBar.appearance().largeTitleTextAttributes
	}

    var body: some View {
		NavigationView {
			if #available(iOS 15.0, *) {
				List(projects) { project in
					NavigationLink(destination: NewProject() /*ProjectDetail(project: project)*/) {
						ProjectRow(project: project)
					}
				}
				.navigationTitle("PROJECTS")
				.searchable(text: $text)
				.toolbar {
					toolbar
				}
				.sheet(isPresented: $showSheet, onDismiss: {
					// refresh?
				}) {
					NewProject()
				}
			} else {
				List(projects) {
					// NavigationLink(destination: ProjectDetail(project: $0)) {
						ProjectRow(project: $0)
					// }
				}
				.listStyle(.insetGrouped) // fix square-list bug for iOS lower than 15 compiling for iOS 15
				.navigationTitle("PROJECTS")
				.toolbar {
					toolbar
				}
				.sheet(isPresented: $showSheet, onDismiss: {}) {
					NewProject()
				}
			}
		}
    }

	var toolbar: some ToolbarContent {
		Group {
			ToolbarItem(placement: .navigationBarTrailing) {
				Menu {
					Button {} label: {
						Label("Filters", systemImage: "line.3.horizontal.decrease")
					}
                    Menu {
                        Picker(selection: $sortChoice) {
                            Text("Date").tag(0)
                            Text("Status").tag(1)
                            Label("Alphabetically", systemImage: "abc").tag(2)
                        } label: {}
                    } label: {
                        Text("Sort by")
                    }
				} label: {
					if #available(iOS 15.0, *) {
						Image(systemName: "line.3.horizontal.decrease.circle")
							.imageScale(.large)
					} else {
						Image(systemName: "ellipsis.circle")
							.imageScale(.large)
					}
				}
			}
			ToolbarItem(placement: .navigationBarTrailing) {
				Button {
					showSheet.toggle()
				} label: {
					Image(systemName: "plus.circle.fill")
				}
			}
		}
	}
}

struct ProjectsTab_Previews: PreviewProvider {
    static var previews: some View {
		ProjectsTab()
    }
}
