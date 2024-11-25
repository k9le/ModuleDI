//
//  ServiceLocator.swift
//  ModuleDI
//
//  Created by Артем Мыльников on 25.11.2024.
//

import Foundation
import NetworkServiceImpl
import PersistenceServiceImpl

final class ServiceLocator {
    static let shared = ServiceLocator()
    private init() {}

    let networkScreenServiceFactory = NetworkServiceFactoryImpl()
    let persistenceScreenServiceFactory = PersistenceServiceFactoryImpl()
}
