//
//  SecondScreenFactoryImpl.swift
//  SecondScreenImpl
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import SecondScreenInterface
import NetworkServiceInterface
import PersistenceServiceInterface
import Swinject

public final class SecondScreenComposer<Network: NetworkServiceFactory, Persistance: PersistenceServiceFactory, Router: SecondScreenRouterInterface> {

    public struct Dependencies {
        let networkServiceFactory: Network
        let persistenceServiceFactory: Persistance
        let router: Router
        let theme: UIUserInterfaceStyle

        public init(networkServiceFactory: Network, persistenceServiceFactory: Persistance, router: Router, theme: UIUserInterfaceStyle) {
            self.networkServiceFactory = networkServiceFactory
            self.persistenceServiceFactory = persistenceServiceFactory
            self.router = router
            self.theme = theme
        }
    }

    public init() {}

    public func makeScreen(dependencies: Dependencies) -> UIViewController {
        let presenter = SecondScreenPresenterImpl(
            router: dependencies.router,
            networkService: dependencies.networkServiceFactory.makeNetworkService(),
            persistenceService: dependencies.persistenceServiceFactory.makePersistenceService()
        )

        let vc = SecondScreenViewController(theme: dependencies.theme, presenter: presenter)
        presenter.view = vc

        return vc
    }
}
