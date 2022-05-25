//
//  LaunchKeys.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import Foundation

enum LaunchKeys {
    
    enum Localized: String, Localizable {
        case title
        case description
        
        var tableName: String { "Launch" }
    }
}
