//
//  DBManager.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/8/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation

class DBManager: NSObject {
    
    class func persistUserModelObject(realmObject : LoginUserModel){
        let realm = RealmManager.shared.realm
        try! realm.write {
            realm.add(realmObject)
        }
    }
    
    class func getUserObject() -> LoginUserModel {
        let realm = RealmManager.shared.realm
        let results = realm.objects(LoginUserModel.self)
        if results.count > 0 {
            return results.last!
        }
        else {
            return LoginUserModel()
        }
    }
}
