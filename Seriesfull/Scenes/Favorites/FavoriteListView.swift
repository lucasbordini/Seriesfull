//
//  FavoritesView.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit

class FavoriteListView: UIView {
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Favorites"
        return label
    }()
}

extension FavoriteListView: ViewCode {
    
    func setupHierarchy() {
        addSubview(titleLabel)
    }
    
    func setupConstraints() {
        titleLabel.centerXToSuperview()
        titleLabel.centerYToSuperview()
    }
    
    
    
}

