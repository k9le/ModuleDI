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

public final class FirstScreenComposer {

    public init() {}

    public func makeScreen(appearance: some FirstScreenAppearance, router: some FirstScreenRouterInterface) -> UIViewController {
        let presenter = FirstScreenPresenterImpl(router: router)
        
        let vc = FirstScreenViewController(appearance: appearance, presenter: presenter)
        presenter.view = vc
        
        return vc
    }
}
