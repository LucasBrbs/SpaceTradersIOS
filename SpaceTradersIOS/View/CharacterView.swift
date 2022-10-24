//
//  CharacterView.swift
//  SpaceTradersIOS
//
//  Created by Lucas Barbosa de Oliveira on 15/10/22.
//

import UIKit
import SwiftUI
import Foundation

class CharacterView: UIView {
    private lazy var nameAccount: UILabel = {
        var nameLogin = UILabel()
        nameLogin.text = "Name: None"
        nameLogin.translatesAutoresizingMaskIntoConstraints = false
        nameLogin.textColor = .systemYellow
        return nameLogin
    }()
    private lazy var moneyAccount: UILabel = {
        var money = UILabel()
        money.text = "Money: 0.0 €$"
        money.translatesAutoresizingMaskIntoConstraints = false
        money.textColor = .systemYellow
        return money
    }()
    override init(frame: CGRect) {
        super.init(frame: .zero)
        applyViewCode()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension CharacterView: ViewCodeConfiguration {
    func buildHierarchy() {
        self.addSubview(nameAccount)
        self.addSubview(moneyAccount)
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameAccount.topAnchor.constraint(equalTo: self.topAnchor),
            nameAccount.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameAccount.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameAccount.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            moneyAccount.topAnchor.constraint(equalTo: self.nameAccount.bottomAnchor),
            moneyAccount.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            moneyAccount.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            moneyAccount.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    func configureViews() {
        self.backgroundColor = .systemBackground
    }
}
