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

@objc public
final class SecondScreenFactoryImpl: NSObject {

    @objc public
    static func makeSecondScreen(with theme: UIUserInterfaceStyle) -> UIViewController {

        let router = SecondScreenRouter()

        let networkServiceFactory = NetworkServiceFactory()
        let persistenceServiceFactory = PersistenceServiceFactory()

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
