//
//  FirstScreenFactoryImpl.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import FirstScreenInterface
import SecondScreenInterface

@objc public
final class FirstScreenFactoryImpl: NSObject {

    @objc public
    static func makeFirstScreen(_ appearance: FirstScreenAppearance?) -> UIViewController {
        let appearance = appearance ?? FirstScreenAppearanceFactory().makeAppearance(forPrefferedId: 1)
        let screen2Factory = SecondScreenFactory()

        let router = FirstScreenRouter(secondScreenFactory: screen2Factory)
        let presenter = FirstScreenPresenterImpl(router: router)

        let vc = FirstScreenViewController(appearance: appearance, presenter: presenter)

        presenter.view = vc
        router.fromVC = vc

        return vc
    }
}
