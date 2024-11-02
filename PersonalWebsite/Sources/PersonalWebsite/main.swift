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

try renderPages(website)
try copyResources()
