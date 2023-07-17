//
//  MainSceneDelegate.swift
//  Listo
//
//  Created on 17/02/2022.
//

import SwiftUI
import UIKit

final class MainSceneDelegate: UIResponder, UIWindowSceneDelegate {
  @Environment(\.openURL) private var openURL: OpenURLAction
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let shortcutItem = connectionOptions.shortcutItem else {
      return
    }

    handleShortcutItem(shortcutItem)
  }
  
  func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
    handleShortcutItem(shortcutItem, completionHandler: completionHandler)
  }
  
  private func handleShortcutItem(_ shortcutItem: UIApplicationShortcutItem, completionHandler: ((Bool) -> Void)? = nil) {
    guard shortcutItem.type == "Listo.projectTab" else {
      completionHandler?(false)
      return
    }
    
    openURL(URL(string: "quickactiondemo://actions/createNote")!) { completed in
      completionHandler?(completed)
    }
  }
}
