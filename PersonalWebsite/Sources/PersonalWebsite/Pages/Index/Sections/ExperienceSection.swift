//
//  ExperienceSection.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Plot

struct ExperienceSection: BodySection {
    var content: Node<HTML.BodyContext> {
        .div(
            .id("experience")
        )
    }
}

extension Node where Context == HTML.BodyContext {
    static func experienceSection() -> Node {
        ExperienceSection().content
    }
}
