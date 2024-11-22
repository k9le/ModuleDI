//
//  PersistenceServiceDI.swift
//  PersistenceService
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import PersistenceServiceInterface
import Swinject

public final class PersistenceServiceDI {
    public static func registerYourDependencies(_ container: Swinject.Container) {
        container.register(PersistenceServiceFactory.self) { resolver in
            PersistenceServiceFactoryImpl(diResolver: resolver)
        }
    }
}
