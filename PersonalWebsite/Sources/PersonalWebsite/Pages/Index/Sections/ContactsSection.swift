//
//  ContactsSection.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Plot

struct ContactsSection: BodySection {
    var content: Node<HTML.BodyContext> {
        .div(
            .id("contacts"),
            .class("container"),
            .h3("Contacts"),
            .a(
                .href(Router.custom("https://www.instagram.com/loyihsu")),
                .target(.blank),
                .i(
                    .class("fab fa-instagram")
                )
            ),
            .a(
                .href(Router.custom("https://twitter.com/_loyihsu")),
                .target(.blank),
                .i(
                    .class("fab fa-twitter")
                )
            ),
            .a(
                .href(Router.custom("https://github.com/loyihsu/")),
                .target(.blank),
                .i(
                    .class("fab fa-github-alt")
                )
            ),
            .a(
                .href(Router.custom("mailto:works@loyi.dev")),
                .target(.blank),
                .i(
                    .class("far fa-envelope")
                )
            ),
            .a(
                .href(Router.custom("https://www.linkedin.com/in/yu-sung-loyi-hsu-14977bb6/")),
                .target(.blank),
                .i(
                    .class("fab fa-linkedin-in")
                )
            )
        )
    }
}

extension Node where Context == HTML.BodyContext {
    static func contactsSection() -> Node {
        ContactsSection().content
    }
}
