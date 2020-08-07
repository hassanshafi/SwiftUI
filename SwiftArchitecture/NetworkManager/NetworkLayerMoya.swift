//
//  NetworkLayerMoya.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation
import Moya

public enum NetworkLayer{
    case login(email: String, password: String)
}
extension NetworkLayer: TargetType{
    public var baseURL: URL {
        return URL(string: "http://209.59.129.233/~democmolds/mystory/public/api/")!
    }

public var path: String {
    switch self {
    case .login: return "login"
    }
}

public var method: Moya.Method {
    switch self {
    case .login: return .post
    }
}

public var sampleData: Data {
    return Data()
}

public var task: Task {
        switch self {
        case .login(let email, let password): return .requestParameters(parameters: ["email":email,"password":password], encoding: JSONEncoding.default)
        }
    }

public var headers: [String : String]? {
    
    switch self {
    case .login: return ["Content-Type": "application/json"]
    
    }
}

public var validationType: ValidationType{
    return .successCodes
}
}
