//
//  ScreenManager.swift
//  ModuleDI
//
//  Created by Артем Мыльников on 25.11.2024.
//

import UIKit
import FirstScreenImpl
import SecondScreenImpl

final class ScreenManager {
    let serviceLocator = ServiceLocator.shared

    func makeRootScreen() -> UIViewController {
        OneTwoRouter().makeRootScreen()
    }

    private final class OneTwoRouter: FirstScreenRouterInterface, SecondScreenRouterInterface {
        private let navigationController = UINavigationController()
        private let serviceLocator = ServiceLocator.shared

        func makeRootScreen() -> UIViewController {
            let vc = FirstScreenComposer().makeScreen(appearance: FirstScreenAppearanceImpl1(), router: self)
            navigationController.setViewControllers([vc], animated: false)
            return navigationController
        }

        func showSecondScreen(with theme: UIUserInterfaceStyle) {
            let dependencies = SecondScreenComposer.Dependencies(
                networkServiceFactory: serviceLocator.networkScreenServiceFactory,
                persistenceServiceFactory: serviceLocator.persistenceScreenServiceFactory,
                router: self,
                theme: theme
            )
            let vc = SecondScreenComposer().makeScreen(dependencies: dependencies)
            navigationController.pushViewController(vc, animated: true)
        }

        func popBack() {
            navigationController.popViewController(animated: true)
        }
    }
}
