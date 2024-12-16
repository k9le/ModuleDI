//
//  FirstScreenInterface.swift
//  FirstScreen
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit

@objc
public protocol FirstScreenAppearance {
    var backgroundColor: UIColor { get }
    var button1Title: String { get }
    var button2Title: String { get }
}
