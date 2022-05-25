//
//  EpisodeDetailKeys.swift
//  Seriesfull
//
//  Created by lucasbordini on 20/05/22.
//

import Foundation

enum EpisodeDetailKeys {
    
    enum Localized: String, Localizable {
        case title
        
        var tableName: String { "EpisodeDetail" }
    }
}
