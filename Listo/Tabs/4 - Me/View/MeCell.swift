//
//  MeCell.swift
//  Listo
//
//  Created on 26/10/2021.
//

import SwiftUI

struct MeCell: View {
	var title: String
	var subtitle: String
	var icon: Image = Image(systemName: "globe")

    var body: some View {
		HStack {
			EmptyView() // variable doesn't work as first element of stack
			icon
				.foregroundColor(.gray)
			VStack(alignment: .leading) {
				Text(title)
				if !subtitle.isEmpty {
					Text(subtitle)
						.foregroundColor(.gray)
				}
			}
			Spacer()
			Button {
				// edit action
			} label: {
				Image(systemName: "pencil")
			}
		}
    }
}

struct MeCell_Previews: PreviewProvider {
    static var previews: some View {
        MeCell(title: "Title", subtitle: "Subtitle")
			.previewLayout(.fixed(width: 300, height: 44))
    }
}
