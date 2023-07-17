//
//  MainView.swift
//  Listo
//
//  Created on 24/10/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
		TabView {
			ProjectsTab()
				.tabItem {
					Label("PROJECTS", systemImage: "hammer.fill")
				}
			TodoTab()
				.tabItem {
					Label("TODO", systemImage: "square.and.pencil")
				}
			DevicesTab()
				.tabItem {
					Label("DEVICES", systemImage: "iphone")
				}
			MeTab()
				.tabItem {
					Label("ME", systemImage: "person.fill")
				}
		}
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
