//
//  Renderable.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/1.
//

import Plot

protocol Renderable {
    func render() -> String
}

extension HTML: Renderable {
    func render() -> String {
        self.render(indentedBy: .spaces(4))
    }
}
