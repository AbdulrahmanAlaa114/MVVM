//
//  LoginModel.swift
//  MVVM-Demo
//
//  Created by Hassan Mostafa on 7/25/20.
//  Copyright © 2020 Hassan Mostafa. All rights reserved.
//



import Foundation


// MARK: - LoginModel
struct LoginModel: Codable {
    let name: String?
    let email: String?
    let phone: String?
    let token: String?
    
}

