//
//  LoginViewModel.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    init() {
        LoginUser()
    }
    
    private func LoginUser() {
        NetworkManager.loadLoginApi(emailText: "user002@mailinator.com", passwordText:"12345678") { (user) in
            DBManager.persistUserModelObject(realmObject: user ?? LoginUserModel())
            
            print(DBManager.getUserObject())
        }
        
    }
    
}
