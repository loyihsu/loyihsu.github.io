//
//  HeroSection.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Plot

struct HeroSection: BodySection {
    var content: Node<HTML.BodyContext> {
        .div(
            .id("hero")
        )
    }
}

extension Node where Context == HTML.BodyContext {
    static func heroSection() -> Node {
        HeroSection().content
    }
}
