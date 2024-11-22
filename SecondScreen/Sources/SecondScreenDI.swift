//
//  SecondScreenDI.swift
//  SecondScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import SecondScreenInterface
import Swinject

public class SecondScreenDI {
    public static func registerYourDependencies(_ container: Swinject.Container) {
        container.register(SecondScreenFactory.self) { resolver in
            SecondScreenFactoryImpl(diResolver: resolver)
        }
    }
}
