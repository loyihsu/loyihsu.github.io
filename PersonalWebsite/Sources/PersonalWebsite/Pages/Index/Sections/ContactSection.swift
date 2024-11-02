//
//  ContactSection.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Plot

struct ContactSection: BodySection {
    var content: Node<HTML.BodyContext> {
        .div(
            .id("contact")
        )
    }
}

extension Node where Context == HTML.BodyContext {
    static func contactSection() -> Node {
        ContactSection().content
    }
}
