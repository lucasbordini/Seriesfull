//
//  ShowCollectionViewCell.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit
import Kingfisher

class ShowCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "ShowCollectionViewCell"
    
    private lazy var serieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var serieNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private func setupView() {
        addSubview(serieImageView)
        addSubview(serieNameLabel)
        
        serieImageView.topToSuperview()
        serieImageView.leftAndRightToSuperview()
        serieImageView.heightToWidth(of: serieImageView, multiplier: 1.2)
        
        serieNameLabel.topToBottom(of: serieImageView, offset: 4)
        serieNameLabel.leftAndRightToSuperview()
        serieNameLabel.bottomToSuperview(offset: -4)
    }
    
    public func setupCell(with show: ShowList.Model.ViewModel.Show) {
        setupView()
        
        serieNameLabel.text = show.name
        if let url = URL(string: show.image ?? String()) {
            serieImageView.kf.setImage(with: url)
        }
    }
}
