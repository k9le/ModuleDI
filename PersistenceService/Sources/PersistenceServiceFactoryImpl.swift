//
//  PersistenceServiceFactoryImpl.swift
//  PersistenceServiceImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import Foundation
import PersistenceServiceInterface

@objc public
final class PersistenceServiceFactoryImpl: NSObject {

    @objc public static
    func makePersistenceService() -> PersistenceServiceInterface {
        PersistenceServiceImpl()
    }
}
