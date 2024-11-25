//
//  NetworkServiceFactoryImpl.swift
//  NetworkService
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import NetworkServiceInterface
import Swinject

final class NetworkServiceImpl: NetworkServiceInterface {

    init() {
    }

    func makeNetworkRequest() {
        print(">>>> Network request")
    }
}
