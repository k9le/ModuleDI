//
//  SceneDelegate.swift
//  ModularizedSwinject
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import FirstScreenInterface
import FirstScreenImpl
import SecondScreenImpl
import NetworkServiceImpl
import PersistenceServiceImpl
import Swinject

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private let container = Swinject.Container()

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let wc = (scene as? UIWindowScene) else { return }

        registerDependencies()

        let window = UIWindow(windowScene: wc)
        window.makeKeyAndVisible()
        self.window = window

        let screen1VCFactory = container.resolve(FirstScreenFactory.self)!
        let screen1VC = screen1VCFactory.makeFirstScreen()
        window.rootViewController = UINavigationController(rootViewController: screen1VC)
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) { }


    private func registerDependencies() {
        FirstScreenDI.registerYourDependencies(container)
        SecondScreenDI.registerYourDependencies(container)
        NetworkServiceDI.registerYourDependencies(container)
        PersistenceServiceDI.registerYourDependencies(container)
    }
}
