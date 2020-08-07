//
//  PostResponse.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation

struct PostResponse: Codable {
    let userId: Int
    let id: Int?
    let title: String?
    let body: String?
}
