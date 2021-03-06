//
//  SceneDelegate.swift
//  RetainCycleInstruments
//
//  Created by tambanco 🥳 on 12.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.backgroundColor = .systemTeal
        let mainVC = ViewController()
        let navBar = UINavigationController(rootViewController: mainVC)
        window?.rootViewController = navBar
        window?.makeKeyAndVisible()
    }
}
