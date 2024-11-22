//
//  FirstScreenDI.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import FirstScreenInterface
import Swinject

public final class FirstScreenDI {
    public static func registerYourDependencies(_ container: Swinject.Container) {

        container.register(FirstScreenAppearance.self) { _ in
            FirstScreenAppearanceImpl1()
        }

        container.register(FirstScreenFactory.self) { resolver in
            FirstScreenFactoryImpl(diResolver: resolver)
        }
    }
}
