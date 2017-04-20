//
//  User.swift
//  InstaCover
//
//  Created by Juan M Mariscal on 4/19/17.
//  Copyright © 2017 Mariscal Development. All rights reserved.
//

import Foundation

struct User {
    let username: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
