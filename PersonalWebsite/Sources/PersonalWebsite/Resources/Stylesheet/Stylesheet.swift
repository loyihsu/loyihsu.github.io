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
            .stylesheet(Stylesheet.cards.path()),
            .stylesheet(Stylesheet.icons.path()),
            .stylesheet(Stylesheet.navbar.path()),
            .stylesheet(Stylesheet.site.path()),
            .stylesheet(Stylesheet.skills.path()),
            .stylesheet(Stylesheet.views.path()),
            .stylesheet(Stylesheet.responsive.path()),
            .link(
                .rel(.stylesheet),
                .href("https://use.fontawesome.com/releases/v5.7.0/css/all.css"),
                .integrity("sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"),
                .attribute(named: "crossorigin", value: "anonymous")
            ),
        ])
    }
}

extension Resource {
    static var stylesheets: any ResourceType.Type {
        Stylesheet.self
    }
}
