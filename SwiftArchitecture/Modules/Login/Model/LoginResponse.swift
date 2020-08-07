//
//  LoginResponse.swift
//  SwiftArchitecture
//
//  Created by hassan shafi on 8/7/20.
//  Copyright © 2020 hassan shafi. All rights reserved.
//

import Foundation
import RealmSwift

class LoginUserModel: Object,Decodable {
    @objc dynamic var id : String?
    @objc dynamic var first_name : String?
    @objc dynamic var last_name : String?
    @objc dynamic var username : String?
    @objc dynamic var email : String?
    @objc dynamic var api_token : String?
    @objc dynamic var country_id : String?
    @objc dynamic var city_id : String?
    @objc dynamic var zip_code : String?
    @objc dynamic var password_recovery_link : String?
    @objc dynamic var email_verified_at : String?
    @objc dynamic var social_network_id : String?
    @objc dynamic var social_network_type : String?
    @objc dynamic var created_at : String?
    @objc dynamic var updated_at : String?
    @objc dynamic var profile_image : String?
    @objc dynamic var deleted_at : String?
    @objc dynamic var country : String?
    @objc dynamic var city : String?
    //@objc dynamic var image_urls : Image_urls?
    //@objc dynamic var question : [String]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case first_name = "first_name"
        case last_name = "last_name"
        case username = "username"
        case email = "email"
        case api_token = "api_token"
        case country_id = "country_id"
        case city_id = "city_id"
        case zip_code = "zip_code"
        case password_recovery_link = "password_recovery_link"
        case email_verified_at = "email_verified_at"
        case social_network_id = "social_network_id"
        case social_network_type = "social_network_type"
        case created_at = "created_at"
        case updated_at = "updated_at"
        case profile_image = "profile_image"
        case deleted_at = "deleted_at"
        case country = "country"
        case city = "city"
        //case image_urls = "image_urls"
        //case question = "question"
    }

   public required convenience init(from decoder: Decoder) throws {
    self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
        last_name = try values.decodeIfPresent(String.self, forKey: .last_name)
        username = try values.decodeIfPresent(String.self, forKey: .username)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        api_token = try values.decodeIfPresent(String.self, forKey: .api_token)
        country_id = try values.decodeIfPresent(String.self, forKey: .country_id)
        city_id = try values.decodeIfPresent(String.self, forKey: .city_id)
        zip_code = try values.decodeIfPresent(String.self, forKey: .zip_code)
        password_recovery_link = try values.decodeIfPresent(String.self, forKey: .password_recovery_link)
        email_verified_at = try values.decodeIfPresent(String.self, forKey: .email_verified_at)
        social_network_id = try values.decodeIfPresent(String.self, forKey: .social_network_id)
        social_network_type = try values.decodeIfPresent(String.self, forKey: .social_network_type)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
        profile_image = try values.decodeIfPresent(String.self, forKey: .profile_image)
        deleted_at = try values.decodeIfPresent(String.self, forKey: .deleted_at)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        city = try values.decodeIfPresent(String.self, forKey: .city)
       // image_urls = try values.decodeIfPresent(Image_urls.self, forKey: .image_urls)
        //question = try values.decodeIfPresent([String].self, forKey: .question)
    }
}

