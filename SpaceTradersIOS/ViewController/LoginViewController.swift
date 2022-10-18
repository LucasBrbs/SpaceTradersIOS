//
//  LoginViewController.swift
//  SpaceTradersIOS
//
//  Created by Lucas Barbosa de Oliveira on 15/10/22.
//

import UIKit

class LoginViewController: UIViewController {

    private lazy var spaceTraderTitle: UILabel = {
        let title = UILabel()
        title.text = " Space Traders IOS "
        title.textColor = .systemOrange
        title.translatesAutoresizingMaskIntoConstraints = false
        title.lineBreakMode =
        return title
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        applyViewCode()
    }
}

extension LoginViewController: ViewCodeConfiguration {
    func buildHierarchy() {
        view.addSubview(spaceTraderTitle)
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
            spaceTraderTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            spaceTraderTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    func configureViews() {
        view.backgroundColor = .systemBackground
    }
}
