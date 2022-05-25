//
//  GradientView.swift
//  Seriesfull
//
//  Created by lucasbordini on 19/05/22.
//

import UIKit
import TinyConstraints

class GradientView: UIView {
    
    private weak var gradientLayer: CAGradientLayer!
    
    convenience init(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint, locations: [NSNumber]) {
        self.init(frame: .zero)
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = frame
        layer.addSublayer(gradientLayer)
        self.gradientLayer = gradientLayer
        set(colors: colors, startPoint: startPoint, endPoint: endPoint, locations: locations)
        backgroundColor = .clear
    }
    
    func set(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint, locations: [NSNumber]) {
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        gradientLayer.locations = locations
    }
    
    func setupConstraints() {
        topAndBottomToSuperview()
        leftAndRightToSuperview()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        guard let gradientLayer = gradientLayer else { return }
        gradientLayer.frame = frame
        superview?.addSubview(self)
    }
}
