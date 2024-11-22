//
//  PersistenceServiceFactoryImpl.swift
//  PersistenceService
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import PersistenceServiceInterface
import Swinject

final class PersistenceServiceImpl: PersistenceServiceInterface {

    private let diResolver: any Swinject.Resolver

    init(diResolver: any Swinject.Resolver) {
        self.diResolver = diResolver
    }

    func makeDatabaseFetch() {
        print(">>>> Database fetch")
    }
}
