//
//  Localizable.swift
//  Seriesfull
//
//  Created by lucasbordini on 18/05/22.
//

import Foundation

protocol Localizable {
    var tableName: String { get }
    var text: String { get }

    func string(_ arguments: [CVarArg]) -> String
    func string(_ arguments: CVarArg...) -> String
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    
    var text: String {
        rawValue.localized(tableName: tableName)
    }
    
    func string(_ arguments: [CVarArg] = []) -> String {
        rawValue.localized(tableName: tableName, arguments: arguments)
    }

    func string(_ arguments: CVarArg...) -> String {
        rawValue.localized(tableName: tableName, arguments: arguments)
    }
}

extension String {
    
    func localized(tableName: String, arguments: [CVarArg] = []) -> String {
        String(format: NSLocalizedString(self, tableName: tableName, bundle: .main, comment: ""), arguments: arguments)
    }
}
