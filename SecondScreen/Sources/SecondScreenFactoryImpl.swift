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

final class SecondScreenFactoryImpl: SecondScreenFactory {

    private let diResolver: any Swinject.Resolver

    init(diResolver: any Swinject.Resolver) {
        self.diResolver = diResolver
    }

    func makeSecondScreen(with theme: UIUserInterfaceStyle) -> UIViewController {

        let router = SecondScreenRouter()

        let networkServiceFactory = diResolver.resolve(NetworkServiceFactory.self)!
        let persistenceServiceFactory = diResolver.resolve(PersistenceServiceFactory.self)!

        let presenter = SecondScreenPresenterImpl(
            router: router,
            networkService: networkServiceFactory.makeNetworkService(),
            persistenceService: persistenceServiceFactory.makePersistenceService()
        )

        let vc = SecondScreenViewController(theme: theme, presenter: presenter)
        router.fromVC = vc
        presenter.view = vc

        return vc
    }
}
