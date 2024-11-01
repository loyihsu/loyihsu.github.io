//
//  main.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/1.
//

import Foundation

let website = PersonalWebsite(
    contents: [
        IndexPage(),
    ]
)

let pages = website.render()

let packageRootPath = URL(fileURLWithPath: #file)
    .pathComponents
    .dropLast(2)

let publicFolderPath = Array(packageRootPath)
    .appending("Public")

let targetPath = publicFolderPath.joined(separator: "/")

for page in pages {
    let filePath = targetPath + "/" + page.fileName
    let fileUrl = URL(fileURLWithPath: filePath)
    let html = page.html
    try html.write(to: fileUrl, atomically: true, encoding: .utf8)
}
