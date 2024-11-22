//
//  NetworkServiceFactoryImpl.swift
//  NetworkService
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import NetworkServiceInterface
import Swinject

final class NetworkServiceImpl: NetworkServiceInterface {

    private let diResolver: any Swinject.Resolver

    init(diResolver: any Swinject.Resolver) {
        self.diResolver = diResolver
    }

    func makeNetworkRequest() {
        print(">>>> Network request")
    }
}
