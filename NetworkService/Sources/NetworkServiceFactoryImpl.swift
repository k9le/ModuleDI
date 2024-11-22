//
//  NetworkServiceFactoryImpl.swift
//  NetworkServiceImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import NetworkServiceInterface
import Swinject

final class NetworkServiceFactoryImpl: NetworkServiceFactory {

    private let diResolver: any Swinject.Resolver

    init(diResolver: any Swinject.Resolver) {
        self.diResolver = diResolver
    }

    func makeNetworkService() -> NetworkServiceInterface {
        NetworkServiceImpl(diResolver: diResolver)
    }
}
