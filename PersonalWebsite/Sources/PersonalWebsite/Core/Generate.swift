//
//  Generate.swift
//  PersonalWebsite
//
//  Created by Yu-Sung Loyi Hsu on 2024/11/2.
//

import Foundation

// MARK: - Paths

private let rootFolderPath: String = {
    let packageRootPath = URL(fileURLWithPath: #file)
        .pathComponents
        .dropLast(2)

    return packageRootPath.joined(separator: "/")
}()

private let publicFolderPath = rootFolderPath + "/Public"

private let resourcesFolderPath = rootFolderPath + "/Sources/PersonalWebsite/Resources"

// MARK: - Interfaces

func renderPages(_ website: PersonalWebsite) throws {
    let pages = website.render()
    for page in pages {
        let filePath = publicFolderPath + "/" + page.fileName
        let fileUrl = URL(fileURLWithPath: filePath)
        let html = page.html
        try html.write(to: fileUrl, atomically: true, encoding: .utf8)
    }
}

func copyResources() throws {
    try copy(Resource.asset)
    try copy(Resource.stylesheets)
    try copy(Resource.scripts)
}

// MARK: - Helpers

private func copy<R: ResourceType>(_ resourceType: R.Type) throws {
    let sourcePath = URL(fileURLWithPath: resourcesFolderPath + "/\(resourceType.self)/Files")
    let targetPath = URL(fileURLWithPath: publicFolderPath + "/" + R.targetPath())

    try FileManager.default.createDirectory(at: targetPath, withIntermediateDirectories: true)

    let oldFilePaths = try FileManager.default.contentsOfDirectory(at: targetPath, includingPropertiesForKeys: nil)

    for filePath in oldFilePaths {
        try FileManager.default.removeItem(at: filePath)
    }

    for fileName in resourceType.allCases {
        try FileManager.default.copyItem(
            at: sourcePath.appending(component: fileName.description),
            to: targetPath.appending(component: fileName.description)
        )
    }
}
