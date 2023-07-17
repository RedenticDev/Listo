//
//  ProjectsData.swift
//  Listo
//
//  Created on 28/10/2021.
//

import Foundation

var projects: [Project] = [
	Project(id: 0, name: "SBColors", version: "1.0.1", releaseState: .released, description: "Color your status bar!")
]

func loadFromStorage() -> [Project] {
	return []
}

/**
 func load<T: Decodable>(_ filename: String) -> T {
	return try decoder.decode(T.self, from: Data(contentsOf: Bundle.main.url(forResource: filename, withExtension: nil))
 }
 */
