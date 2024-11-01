//
//  Page.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/1.
//

protocol Page<R>: Renderable {
    associatedtype R: Renderable
    /// e.g. "index" for "index.html"
    var fileName: String { get }
    /// Renderable content page that can be rendered to HTML.
    var content: R { get }
}

extension Page {
    func render() -> String {
        content.render()
    }
}
