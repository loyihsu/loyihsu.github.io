//
//  Resource.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

struct Resource {}

protocol ResourceType: CaseIterable, RawRepresentable, CustomStringConvertible {
    static func targetPath() -> String
}

extension ResourceType {
    var description: String {
        self.rawValue as? String ?? ""
    }
}
