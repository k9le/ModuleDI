//
//  SecondScreenRouter.swift
//  SecondScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import UIKit

protocol SecondScreenRouterInterface: AnyObject {
    func popBack()
}

final class SecondScreenRouter: SecondScreenRouterInterface {
    weak var fromVC: UIViewController?

    func popBack() {
        fromVC?.navigationController?.popViewController(animated: true)
    }
}
