//
//  Javascript.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Foundation
import Plot

enum Javascript: String, ResourceType {
    case navbar
    case scroll

    var description: String {
        self.rawValue + ".js"
    }

    static func targetPath() -> String {
        "Scripts/"
    }

    func path() -> String {
        Self.targetPath() + self.description
    }
}

extension Node where Context == HTML.HeadContext {
    static func scripts() -> Node {
        .group([
            .script(.src(Javascript.navbar.path())),
            .script(.src(Javascript.scroll.path())),
        ])
    }
}

extension Resource {
    static var scripts: any ResourceType.Type {
        Javascript.self
    }
}
