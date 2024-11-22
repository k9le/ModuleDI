//
//  SecondScreenPresenter.swift
//  SecondScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import Foundation
import NetworkServiceInterface
import PersistenceServiceInterface

protocol SecondScreenPresenterInterface: AnyObject {
    func viewDidLoad()

    func backButtonTapped()
    func makeRequestTapped()
    func makeFetchTapped()
}

final class SecondScreenPresenterImpl: SecondScreenPresenterInterface {

    private let router: SecondScreenRouterInterface
    private let persistenceService: PersistenceServiceInterface
    private let networkService: NetworkServiceInterface

    weak var view: SecondScreenViewInterface?

    init(
        router: SecondScreenRouterInterface,
        networkService: NetworkServiceInterface,
        persistenceService: PersistenceServiceInterface
    ) {
        self.router = router
        self.networkService = networkService
        self.persistenceService = persistenceService
    }

    func viewDidLoad() {

    }

    func backButtonTapped() {
        router.popBack()
    }

    func makeRequestTapped() {
        networkService.makeNetworkRequest()
    }

    func makeFetchTapped() {
        persistenceService.makeDatabaseFetch()
    }
}
