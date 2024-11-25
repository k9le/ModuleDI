//
//  NetworkServiceFactoryImpl.swift
//  NetworkServiceImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import NetworkServiceInterface
import Swinject

public final class NetworkServiceFactoryImpl: NetworkServiceFactory {

    public init() {}

    public func makeNetworkService() -> NetworkServiceInterface {
        NetworkServiceImpl()
    }
}
