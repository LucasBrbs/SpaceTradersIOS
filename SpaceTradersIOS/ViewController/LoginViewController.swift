//
//  LoginViewController.swift
//  SpaceTradersIOS
//
//  Created by Lucas Barbosa de Oliveira on 15/10/22.
//

import UIKit
import Lottie

class LoginViewController: UIViewController {
    let animationView = LottieAnimationView()
    private func setupLottie() {
        animationView.animation = LottieAnimation.named("spaceship")
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
    }
    private lazy var spaceTraderTitle: UILabel = {
        let title = UILabel()
        title.text = " Space Traders IOS "
        title.textColor = .systemOrange
        title.translatesAutoresizingMaskIntoConstraints = false
        title.numberOfLines = 2
        title.lineBreakMode = .byWordWrapping
        title.font = title.font.withSize(30)
        return title
    }()
    var key: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "API Key"
        return text
    }()
    var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Enter", for: .normal)
        button.backgroundColor = .systemOrange
        button.layer.cornerRadius = 10
        return button
    }()
    var keyApiInput: UITextField = {
        let key = UITextField()
        key.backgroundColor = .systemBackground
        key.borderStyle = .none
        key.placeholder = "  Your API key"
        key.layer.cornerRadius = 18
        key.layer.masksToBounds = true
        key.layer.borderWidth = 0.25
        key.layer.borderColor = UIColor.systemOrange.cgColor
        key.translatesAutoresizingMaskIntoConstraints = false
        let leftKey = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 20, height: 0))
        key.leftView =  leftKey
        key.leftViewMode = .always
        return key
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLottie()
        applyViewCode()
    }
}

extension LoginViewController: ViewCodeConfiguration {
    func buildHierarchy() {
        view.addSubview(spaceTraderTitle)
        view.addSubview(key)
        view.addSubview(animationView)
        view.addSubview(keyApiInput)
        view.addSubview(button)
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
            spaceTraderTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            spaceTraderTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            key.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            key.topAnchor.constraint(equalTo: self.animationView.bottomAnchor, constant: 50)
        ])
        NSLayoutConstraint.activate([
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationView.topAnchor.constraint(equalTo: self.spaceTraderTitle.bottomAnchor, constant: 50),
            animationView.heightAnchor.constraint(equalToConstant: 200),
            animationView.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            keyApiInput.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            keyApiInput.topAnchor.constraint(equalTo: self.key.bottomAnchor, constant: 30),
            keyApiInput.widthAnchor.constraint(equalToConstant: view.bounds.width),
            keyApiInput.heightAnchor.constraint(equalToConstant: view.bounds.height/15)
        ])
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: self.keyApiInput.bottomAnchor, constant: 30),
            button.heightAnchor.constraint(equalToConstant: view.bounds.height/18),
            button.widthAnchor.constraint(equalToConstant: view.bounds.width/2)
        ])
    }
    func configureViews() {
        view.backgroundColor = .systemBackground
    }
}
