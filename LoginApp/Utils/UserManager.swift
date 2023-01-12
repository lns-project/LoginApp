//
//  UserManager.swift
//  LoginApp
//
//  Created by Динара Шарафутдинова on 10.01.2023.
//

import Foundation

class UserManager {
    
    private let user = Person(name: "Dinara", photo: "", login: "1", password: "1", pet: [])
    
    func getUser() -> Person {
        return user
    }
}
