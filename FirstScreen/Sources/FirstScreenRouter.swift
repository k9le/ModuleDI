//
//  FirstScreenRouter.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import UIKit
import SecondScreenInterface

protocol FirstScreenRouterInterface: AnyObject {
    func showSecondScreen(with theme: UIUserInterfaceStyle)
}

final class FirstScreenRouter: FirstScreenRouterInterface {
    private let secondScreenFactory: SecondScreenFactory
    
    weak var fromVC: UIViewController?
    
    init(secondScreenFactory: SecondScreenFactory) {
        self.secondScreenFactory = secondScreenFactory
    }
    
    func showSecondScreen(with theme: UIUserInterfaceStyle) {
        let vc2 = secondScreenFactory.makeSecondScreen(with: theme)
        fromVC?.navigationController?.pushViewController(vc2, animated: true)
    }
}
