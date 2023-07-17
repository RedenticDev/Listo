//
//  Project.swift
//  Listo
//
//  Created on 25/10/2021.
//

import Foundation
import UIKit

struct Project: Identifiable {
	var id: Int
	var icon: UIImage?
	var name: String
	var version: String
	var releaseState: ReleaseState
	var description: String
}
