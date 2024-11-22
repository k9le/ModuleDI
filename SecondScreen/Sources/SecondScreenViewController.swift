//
//  SecondScreenViewController.swift
//  SecondScreenImpl
//
//  Created by Vasiliy Fedotov on 17.11.2024.
//

import UIKit
import SecondScreenInterface

protocol SecondScreenViewInterface: AnyObject {}

final class SecondScreenViewController: UIViewController {

    private let theme: UIUserInterfaceStyle
    private let presenter: SecondScreenPresenterInterface

    private let requestButton = UIButton()
    private let fetchButton = UIButton()
    private let popbackButton = UIButton()

    init(
        theme: UIUserInterfaceStyle,
        presenter: SecondScreenPresenterInterface
    ) {
        self.theme = theme
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view?.backgroundColor = theme.backgroundColor

        setupButtons()
        layoutButtons()
    }

    @objc func buttonTapped(_ sender: UIButton) {
        if sender === requestButton {
            presenter.makeRequestTapped()
        } else if sender === fetchButton {
            presenter.makeFetchTapped()
        } else {
            presenter.backButtonTapped()
        }
    }
}

extension SecondScreenViewController: SecondScreenViewInterface {

}

private extension SecondScreenViewController {

    func setupButtons() {
        requestButton.setTitle("make network request", for: .normal)
        requestButton.setTitleColor(theme.buttonTextColor, for: .normal)
        requestButton.translatesAutoresizingMaskIntoConstraints = false
        requestButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        fetchButton.setTitle("make db fetch", for: .normal)
        fetchButton.setTitleColor(theme.buttonTextColor, for: .normal)
        fetchButton.translatesAutoresizingMaskIntoConstraints = false
        fetchButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        popbackButton.setTitle("pop back", for: .normal)
        popbackButton.setTitleColor(theme.buttonTextColor, for: .normal)
        popbackButton.translatesAutoresizingMaskIntoConstraints = false
        popbackButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(requestButton)
        view.addSubview(fetchButton)
        view.addSubview(popbackButton)
    }

    func layoutButtons() {

        requestButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fetchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popbackButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fetchButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        fetchButton.topAnchor.constraint(equalTo: requestButton.bottomAnchor, constant: 20).isActive = true
        popbackButton.topAnchor.constraint(equalTo: fetchButton.bottomAnchor, constant: 20).isActive = true
    }

}

private extension UIUserInterfaceStyle {
    var backgroundColor: UIColor {
        switch self {
        case .dark: return .black
        default: return .white
        }
    }

    var buttonTextColor: UIColor {
        switch self {
        case .dark: return .white
        default: return .black
        }
    }
}
