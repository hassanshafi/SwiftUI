//
//  ContentView.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PostViewModel()
    @ObservedObject var loginModel = LoginViewModel()
    
    var body: some View {
        List(model.articles) { article in
            
            VStack(alignment: .leading) {
                Text(article.title)
                Text(article.description)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
