//
//  PersistenceServiceInterface.swift
//  PersistenceService
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

public protocol PersistenceServiceInterface {
    func makeDatabaseFetch()
}

public protocol PersistenceServiceFactory {
    func makePersistenceService() -> PersistenceServiceInterface
}
