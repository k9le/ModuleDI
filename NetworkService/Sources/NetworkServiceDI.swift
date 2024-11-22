//
//  NetworkServiceDI.swift
//  NetworkService
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import NetworkServiceInterface
import Swinject

public final class NetworkServiceDI {
    public static func registerYourDependencies(_ container: Swinject.Container) {
        container.register(NetworkServiceFactory.self) { resolver in
            NetworkServiceFactoryImpl(diResolver: resolver)
        }
    }
}
