//
//  Stylesheet.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Foundation
import Plot

enum Stylesheet: String, ResourceType {
    case cards
    case icons
    case navbar
    case site
    case skills
    case views
    case responsive

    var description: String {
        self.rawValue + ".css"
    }

    static func targetPath() -> String {
        "Stylesheets/"
    }

    func path() -> String {
        Self.targetPath() + self.description
    }
}

extension Node where Context == HTML.HeadContext {
    static func styles() -> Node {
        .group([
            .style(Stylesheet.cards.path()),
            .style(Stylesheet.icons.path()),
            .style(Stylesheet.navbar.path()),
            .style(Stylesheet.site.path()),
            .style(Stylesheet.skills.path()),
            .style(Stylesheet.views.path()),
            .style(Stylesheet.responsive.path()),
        ])
    }
}

extension Resource {
    static var stylesheets: any ResourceType.Type {
        Stylesheet.self
    }
}
