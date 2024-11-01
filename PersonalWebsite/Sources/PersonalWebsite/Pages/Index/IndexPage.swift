//
//  IndexPage.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/1.
//

import Plot

struct IndexPage: Page {
    var fileName: String {
        "index"
    }

    var content: some Renderable {
        HTML(
            head: [
                .title("Hello world"),
            ]
        ) {
            H1("Hello world")
        }
    }
}
