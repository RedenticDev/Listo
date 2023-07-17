//
//  DeviceKind.swift
//  Listo
//
//  Created on 26/10/2021.
//

import Foundation

enum DeviceKind: String {
	// Devices usable for tests
	case iphone = "iPhone"
	case ipad = "iPad" // add others
	case ipod = "iPod"
	case tv = "Apple TV"

	// Other devices
	case macbookair = "MacBook Air"
	case macbookpro = "MacBook Pro"
	case macmini = "Mac mini"
	case homepodmini = "HomePod mini"

	// Deprecated devices
	case macbook = "MacBook"
	case homepod = "HomePod"
	// TODO: complete
}
