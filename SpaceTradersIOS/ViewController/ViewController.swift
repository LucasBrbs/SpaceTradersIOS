//
//  ViewController.swift
//  SpaceTradersIOS
//
//  Created by Lucas Barbosa de Oliveira on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    private lazy var infoAccount: CharacterView = {
        let info = CharacterView()
        info.translatesAutoresizingMaskIntoConstraints = false
        return info
    }()
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: CGRect.zero,
            collectionViewLayout: UICollectionViewLayout.init()
        )
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .none
        collectionView.register(LoansCollectionViewCell.self,
                                forCellWithReuseIdentifier: LoansCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .vertical
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        applyViewCode()
    }
}
extension ViewController: UICollectionViewDataSource,
                            UICollectionViewDelegate,
                            UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: LoansCollectionViewCell.identifier,
            for: indexPath
        ) as? LoansCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 150)
    }
}

extension ViewController: ViewCodeConfiguration {
    func buildHierarchy() {
        view.addSubview(infoAccount)
        view.addSubview(collectionView)
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
            infoAccount.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            infoAccount.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            infoAccount.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            infoAccount.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.infoAccount.bottomAnchor, constant: 100),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    func configureViews() {
        view.backgroundColor = .systemBackground
    }
}
