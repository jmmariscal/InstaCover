//
//  Comment.swift
//  InstaCover
//
//  Created by Juan M Mariscal on 6/8/17.
//  Copyright © 2017 Mariscal Development. All rights reserved.
//

import Foundation

struct Comment {
    let text: String
    let uid: String
    
    init(dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
