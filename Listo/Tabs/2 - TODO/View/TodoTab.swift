//
//  TodoTab.swift
//  Listo
//
//  Created on 24/10/2021.
//

import SwiftUI

// TODO: https://github.com/paololeonardi/WaterfallGrid
// TODO: https://stackoverflow.com/a/63852624/12070367
struct TodoTab: View {
	@State private var text = ""
	@State private var flipped = false

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
				.navigationTitle("TODO")
				.searchable(text: $text)
				.toolbar {
					toolbar
				}
			} else {
				ScrollView {
					content
				}
				.navigationTitle("TODO")
				.toolbar {
					toolbar
				}
			}
		}
	}

	var content: some View {
		VStack {
			RoundedRectangle(cornerRadius: 10)
				.frame(width: 200, height: 200)
				.foregroundColor(flipped ? .red : .blue)
				.padding()
				.rotation3DEffect(flipped ? Angle(degrees: 360) : Angle(degrees: 0), axis: (x: 0.0, y: 1.0, z: 0.0))
				.animation(.easeOut(duration: 0.75))
				.onTapGesture {
					flipped.toggle()
				}
		}
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

struct TodoTab_Previews: PreviewProvider {
    static var previews: some View {
        TodoTab()
    }
}
