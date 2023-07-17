//
//  DeviceView.swift
//  Listo
//
//  Created on 26/10/2021.
//

import SwiftUI

struct DeviceView: View {
	var device: Device
	var orientation: DeviceViewOrientation = .vertical

    var body: some View {
		if orientation == .vertical || orientation == .verticalWide {
			HStack {
				if orientation == .verticalWide {
					Spacer()
				}
				VStack {
					EmptyView()
					// device.image
					Image(systemName: "iphone")
						.resizable()
						.scaledToFit()
						.frame(maxHeight: 100)
					content
						.padding(.top, 10)
				}
				if orientation == .verticalWide {
					Spacer()
				}
			}
		} else {
			HStack {
				EmptyView()
				// device.image
				Image(systemName: "ipad")
					.resizable()
					.scaledToFit()
					.frame(maxHeight: 100)
				content
					.padding(.leading, 10)
				if orientation == .horizontalWide {
					Spacer()
				}
			}
		}
    }

	var content: some View {
		VStack(alignment: .leading) {
			Text("\(device.kind.rawValue) 8")
			Text("\(device.version) • \(device.color)")
				.foregroundColor(.gray)
		}
	}
}

struct DeviceView_Previews: PreviewProvider {
    static var previews: some View {
		DeviceView(device: Device(kind: .iphone, version: "15.0.2", color: "Space Gray"))
			.previewLayout(.fixed(width: 200, height: 250))
    }
}
