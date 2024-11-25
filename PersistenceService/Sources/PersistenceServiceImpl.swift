//
//  PersistenceServiceFactoryImpl.swift
//  PersistenceService
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import PersistenceServiceInterface
import Swinject

final class PersistenceServiceImpl: PersistenceServiceInterface {

    init() {}

    func makeDatabaseFetch() {
        print(">>>> Database fetch")
    }
}
