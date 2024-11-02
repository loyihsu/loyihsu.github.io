//
//  IndexPage.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/1.
//

import Plot

struct IndexPage: Page {
    static var fileName: String {
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

extension Router {
    var index: String {
        IndexPage.filenameWithExtension()
    }
}
