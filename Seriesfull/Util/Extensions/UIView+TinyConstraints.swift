//
//  UIView+TinyConstraints.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import UIKit
import TinyConstraints

extension UIView {
    func leftAndRightToSuperview(_ offset: CGFloat = 0) {
        leftToSuperview(offset: offset)
        rightToSuperview(offset: -offset)
    }

    func topAndBottomToSuperview(_ offset: CGFloat = 0) {
        topToSuperview(offset: offset)
        bottomToSuperview(offset: -offset)
    }

    func square(_ size: CGFloat) {
        height(size)
        width(size)
    }
}
