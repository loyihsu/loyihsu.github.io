//
//  Asset.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Foundation

enum Asset: String, ResourceType {
    case previewImage = "preview.jpg"
    case touchIcon = "icon.jpg"

    static func targetPath() -> String {
        "Assets/"
    }

    func path() -> String {
        Self.targetPath() + self.rawValue
    }
}

extension Resource {
    static var asset: any ResourceType.Type {
        Asset.self
    }
}
