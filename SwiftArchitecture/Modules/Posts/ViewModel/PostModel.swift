//
//  PostModel.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation


class PostModel: Identifiable {
    
    let id = UUID()
    let post: PostResponse
    
    init(article: PostResponse) {
        self.post = article
    }
    
    var title: String {
        return post.title ?? ""
    }
    
    var description: String {
        return post.body ?? ""
    }
    
}
