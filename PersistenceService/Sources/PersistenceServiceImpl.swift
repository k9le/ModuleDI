//
//  PersistenceServiceFactoryImpl.swift
//  PersistenceService
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import PersistenceServiceInterface

final class PersistenceServiceImpl: PersistenceServiceInterface {
    func makeDatabaseFetch() {
        print(">>>> Database fetch")
    }
}
