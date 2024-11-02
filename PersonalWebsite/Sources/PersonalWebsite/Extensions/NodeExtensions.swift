//
//  NodeExtensions.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Plot

extension Node where Context == HTML.HeadContext {
    static func appleTouchIcon(_ image: any URLRepresentable) -> Node {
        .link(
            .rel(.appleTouchIcon),
            .sizes("180x180"),
            .href(image)
        )
    }

    static func websiteTitle(_ string: String) -> Node {
        .group([
            .title(string),
            .siteName(string),
            .meta(.name("apple-mobile-web-app-title")),
        ])
    }

    static func appleMobileWebAppCapable(_ isOn: Bool) -> Node {
        .meta(
            .name("apple-mobile-web-app-capable"),
            .content(isOn ? "yes" : "no")
        )
    }
}
