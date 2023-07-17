//
//  ReleaseState.swift
//  Listo
//
//  Created on 25/10/2021.
//

import Foundation
import SwiftUI

enum ReleaseState {
	case unknown
	case beta
	case released
	case aborted

	var color: Color {
		switch self {
			case .unknown:
				return Color.gray
			case .beta:
				return Color.yellow
			case .released:
				return Color.green
			case .aborted:
				return Color.red
		}
	}
}
