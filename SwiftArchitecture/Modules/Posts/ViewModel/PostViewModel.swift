//
//  PostViewModel.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation
import Combine
 

class PostViewModel: ObservableObject {
    
    init() {
        getPosts()
    }
    @Published var articles = [PostModel]()
    
    private func getPosts() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        NetworkManager.loadData(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles.map(PostModel.init)
            }
            
        }
        
    }    
}
