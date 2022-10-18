//
//  ViewCodeConfiguration.swift
//  SpaceTradersIOS
//
//  Created by Lucas Barbosa de Oliveira on 15/10/22.
//

import Foundation

protocol ViewCodeConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeConfiguration {
    func applyViewCode() {
        buildHierarchy()
        setupConstraints( )
        configureViews()
    }
}
