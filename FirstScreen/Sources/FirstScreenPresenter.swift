//
//  FirstScreenPresenter.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import Foundation

protocol FirstScreenPresenterInterface: AnyObject {
    func viewDidLoad()
    func button1Tapped()
    func button2Tapped()
}

final class FirstScreenPresenterImpl: FirstScreenPresenterInterface {

    private let router: FirstScreenRouterInterface
    weak var view: FirstScreenViewInterface?

    init(router: FirstScreenRouterInterface) {
        self.router = router
    }

    func viewDidLoad() {

    }

    func button1Tapped() {
        router.showSecondScreen(with: .light)
    }

    func button2Tapped() {
        router.showSecondScreen(with: .dark)
    }
}
