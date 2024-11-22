//
//  PersistenceServiceFactoryImpl.swift
//  PersistenceServiceImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import PersistenceServiceInterface
import Swinject

final class PersistenceServiceFactoryImpl: PersistenceServiceFactory {

    private let diResolver: any Swinject.Resolver

    init(diResolver: any Swinject.Resolver) {
        self.diResolver = diResolver
    }

    func makePersistenceService() -> PersistenceServiceInterface {
        PersistenceServiceImpl(diResolver: diResolver)
    }
}
