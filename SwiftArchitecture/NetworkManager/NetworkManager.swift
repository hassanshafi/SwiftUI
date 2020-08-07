//
//  NetworkManager.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation
import Moya

class NetworkManager {
    
    static let provider = MoyaProvider<NetworkLayer>()
    
    static func loadData(url: URL, completion: @escaping ([PostResponse]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            if let response = try? JSONDecoder().decode([PostResponse].self, from: data) {
                DispatchQueue.main.async {
                    completion(response)
                }
            }
        }.resume()
        
    }
    
    // MARK:- LOAD LOGIN API
    static func loadLoginApi(emailText:String, passwordText:String,  completion: @escaping (LoginUserModel?) -> ()){
        self.provider.request(.login(email: emailText, password: passwordText)) { (result) in
            switch result{
            case .success(let response):
                print(response)
                do {
                    let responseResult = try response.mapJSON()
                    let decoder = JSONDecoder()
                    if let jsonResponse = responseResult as? [String:Any] {
                        if let response = jsonResponse["response"] as? [String:Any] {
                            if let data = response["data"] as? [String:Any] {
                                print(data)
                                let jsonData = try? JSONSerialization.data(withJSONObject:data)
                                let getData = try decoder.decode(LoginUserModel.self, from: jsonData!)
                                completion(getData)
                            }
                        }
                        
                    }
                    
                    
                    
                    
                } catch{
                    completion(nil)
                }
            case .failure(let error):
                completion(nil)
                print(error.localizedDescription)
            }
        }
    }
    
}
