//
//  FirstScreenFactoryImpl.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import FirstScreenInterface
import SecondScreenInterface
import Swinject

final class FirstScreenFactoryImpl: FirstScreenFactory {

    private let diResolver: Swinject.Resolver

    init(diResolver: Swinject.Resolver) {
        self.diResolver = diResolver
    }

    func makeFirstScreen() -> UIViewController {
        let appearance = diResolver.resolve(FirstScreenAppearance.self)!
        let screen2Factory = diResolver.resolve(SecondScreenFactory.self)!

        let router = FirstScreenRouter(secondScreenFactory: screen2Factory)
        let presenter = FirstScreenPresenterImpl(router: router)

        let vc = FirstScreenViewController(appearance: appearance, presenter: presenter)

        presenter.view = vc
        router.fromVC = vc

        return vc
    }
}
