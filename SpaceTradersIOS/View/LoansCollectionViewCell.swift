//
//  LoansCollectionViewCell.swift
//  SpaceTradersIOS
//
//  Created by Lucas Barbosa de Oliveira on 17/10/22.
//

import UIKit

class LoansCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "LoansCollectionViewCell"
    let text: UILabel = {
        let view = UILabel()
        view.text = "help"
        view.textColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyViewCode()
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
extension LoansCollectionViewCell: ViewCodeConfiguration {
    func buildHierarchy() {
        contentView.addSubview(text)
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: contentView.topAnchor),
            text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    func configureViews() {
        contentView.backgroundColor = .lightGray
    }
}
