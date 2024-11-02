//
//  PersonalWebsite.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/1.
//

import Plot

struct RenderedPage {
    let fileName: String
    let html: String
}

final class PersonalWebsite {
    var contents: [any Page]

    init(contents: [any Page] = []) {
        self.contents = contents
    }

    func render() -> [RenderedPage] {
        self.contents.map {
            let name = self.getFileName($0)
            let html = $0.render()

            return RenderedPage(fileName: name, html: html)
        }
    }

    private func getFileName<T: Page>(_ page: T) -> String {
        T.filenameWithExtension()
    }
}
