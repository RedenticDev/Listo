//
//  ProjectRow.swift
//  Listo
//
//  Created on 25/10/2021.
//

import SwiftUI

struct ProjectRow: View {
	var project: Project
	private var icon: Image {
		if project.icon != nil {
			return Image(uiImage: project.icon!)
		} else {
			return Image(systemName: "hammer")
		}
	}

    var body: some View {
		HStack {
			EmptyView()
			icon
				.resizable()
				.frame(width: 50, height: 50)
				.padding(5)
				.padding(.trailing, 10)
			VStack(alignment: .leading) {
				HStack {
					Circle()
						.fill(project.releaseState.color)
						.scaledToFit()
						.frame(width: 15, height: 15, alignment: .bottom)
					Text(project.name)
						.bold()
					Text("•")
					Text("v\(project.version)")
				}
				.padding(.top, 5)

				Text(project.description)
					.offset(y: -5)
					.foregroundColor(.gray)
			}
			Spacer()
		}
    }
}

struct ProjectRow_Previews: PreviewProvider {
    static var previews: some View {
		ProjectRow(project: Project(id: 0, icon: nil, name: "Name", version: "1.0.0", releaseState: .unknown, description: "Description that might be long"))
			.previewLayout(.fixed(width: 300, height: 50))
    }
}
