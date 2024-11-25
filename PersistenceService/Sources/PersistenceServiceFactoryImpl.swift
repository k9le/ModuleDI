//
//  PersistenceServiceFactoryImpl.swift
//  PersistenceServiceImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import PersistenceServiceInterface
import Swinject

public final class PersistenceServiceFactoryImpl: PersistenceServiceFactory {

    public init() {}

    public func makePersistenceService() -> PersistenceServiceInterface {
        PersistenceServiceImpl()
    }
}
