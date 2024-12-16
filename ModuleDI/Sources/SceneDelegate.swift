//
//  SceneDelegate.swift
//  ModularizedSwinject
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import FirstScreenInterface

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let wc = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: wc)
        window.makeKeyAndVisible()
        self.window = window

        let screen1VC = FirstScreenFactory.makeFirstScreen(with: nil)
        window.rootViewController = UINavigationController(rootViewController: screen1VC)
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) { }
}
