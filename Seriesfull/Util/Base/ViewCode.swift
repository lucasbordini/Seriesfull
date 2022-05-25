//
//  ViewCode.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import UIKit

protocol ViewCode {
    
    func setupHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurations()
    
    func setupView()
}

extension ViewCode {
    
    func setupAdditionalConfigurations() { }
    
    func setupView() {
        setupHierarchy()
        setupConstraints()
        setupAdditionalConfigurations()
    }
}
