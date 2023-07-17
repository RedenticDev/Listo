//
//  DevicesTab.swift
//  Listo
//
//  Created on 24/10/2021.
//

import SwiftUI

struct DevicesTab: View {
	@State private var text = ""
	@State private var addedToList = false
	@State private var buttonText = LocalizedStringKey("ADD_TO_LIST")

	init() {
		UINavigationBar.appearance().largeTitleTextAttributes = [
			.foregroundColor: UIColor(Color.accentColor)
		]
		UINavigationBar.appearance().titleTextAttributes = UINavigationBar.appearance().largeTitleTextAttributes
	}

	var body: some View {
		NavigationView {
			if #available(iOS 15.0, *) {
				ScrollView {
					content
				}
				.navigationTitle("DEVICES")
				.searchable(text: $text)
				.toolbar {
					toolbar
				}
			} else {
				ScrollView {
					content
				}
				.navigationTitle("DEVICES")
				.toolbar {
					toolbar
				}
			}
		}
	}

	var content: some View {
		LazyVGrid(columns: [GridItem()]) {
			Section {
				DeviceView(device: Device(kind: .ipad, version: "14.3", color: "Silver"), orientation: .horizontalWide)
					.padding(20)
					.background(RoundedRectangle(cornerRadius: 15)
									.foregroundColor(Color("dynamicCard"))
									.shadow(radius: 5))
					.padding(5)
			} header: {
				HStack {
					Text("THIS_DEVICE")
						.font(.title3)
						.bold()
					Spacer()
					Button {
						addedToList.toggle()
						buttonText = addedToList ? LocalizedStringKey("REMOVE_FROM_LIST") : LocalizedStringKey("ADD_TO_LIST")
					} label: {
						Text(buttonText)
							.frame(maxHeight: .infinity, alignment: .bottomTrailing)
					}
					.frame(alignment: .trailing)
				}
				.frame(maxWidth: .infinity)
			}
			Spacer(minLength: 15)
			Section {
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
					ForEach((0..<10), id: \.self) { _ in
						DeviceView(device: Device(kind: .iphone, version: "15.0.2", color: "Gold"), orientation: .verticalWide)
							.padding(20)
							.background(RoundedRectangle(cornerRadius: 15)
											.foregroundColor(Color("dynamicCard"))
											.shadow(radius: 5))
					}
					.padding(5)
				}
			} header: {
				Text("ALL_DEVICES")
					.font(.title3)
					.bold()
					.frame(maxWidth: .infinity, alignment: .leading)
			}
		}
		.padding([.leading, .trailing], 16)
	}

	var toolbar: some ToolbarContent {
		Group {
			ToolbarItem(placement: .navigationBarTrailing) {
				Button {} label: {
					Image(systemName: "plus.circle.fill")
				}
			}
		}
	}
}

struct DevicesTab_Previews: PreviewProvider {
    static var previews: some View {
        DevicesTab()
    }
}
