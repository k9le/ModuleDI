//
//  NetworkServiceFactoryImpl.swift
//  NetworkServiceImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import Foundation
import NetworkServiceInterface

@objc public
final class NetworkServiceFactoryImpl: NSObject {

    @objc public
    static func makeNetworkService() -> NetworkServiceInterface {
        NetworkServiceImpl()
    }
}
