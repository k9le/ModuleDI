//
//  FirstScreenAppearanceImpl.swift
//  FirstScreenImpl
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import FirstScreenInterface

@objcMembers
public final class FirstScreenAppearanceImpl1: NSObject, FirstScreenAppearance {
    public var backgroundColor: UIColor { UIColor.red }
    public var button1Title: String { "Light" }
    public var button2Title: String { "Dark" }
}

@objcMembers
public final class FirstScreenAppearanceImpl2: NSObject, FirstScreenAppearance {
    public var backgroundColor: UIColor { UIColor.green }
    public var button1Title: String { "Светлая тема" }
    public var button2Title: String { "Темная тема" }

}
