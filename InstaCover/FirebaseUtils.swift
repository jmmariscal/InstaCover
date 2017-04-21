//
//  FirebaseUtils.swift
//  InstaCover
//
//  Created by Juan M Mariscal on 4/20/17.
//  Copyright © 2017 Mariscal Development. All rights reserved.
//

import Foundation
import Firebase

extension FIRDatabase {
    static func fetchUserWithUID( uid: String, completion: @escaping (User) -> ()) {
        print("Fetching user with uid", uid)
        
        FIRDatabase.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String: Any] else { return }
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            print(user.username)
            
            completion(user)
            //            self.fetchPostsWithUser(user: user)
            
        }) { (err) in
            
            print("Failed to fetch user for posts:", err)
        }
        
    }
}
