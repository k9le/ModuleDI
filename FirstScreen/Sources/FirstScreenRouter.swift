//
//  FirstScreenRouter.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 22.11.2024.
//

import UIKit
import SecondScreenInterface

public protocol FirstScreenRouterInterface {
    func showSecondScreen(with theme: UIUserInterfaceStyle)
}
