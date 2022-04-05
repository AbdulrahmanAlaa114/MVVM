//
//  AuthNetworking.swift
//  NetworkLayer
//
//  Created by Ahmed masoud on 5/21/20.
//  Copyright © 2020 Ahmed Masoud. All rights reserved.
//

import Foundation
import Alamofire

enum AuthNetworking {

    case login(info: [String:Any])
    
}


extension AuthNetworking: TargetType {
        
    var url: String {
        
        switch self {
        case .login:
            return URLs.login
        }
    }
    
    
    var method: HTTPMethod {
        switch self {
            
        case .login:
            return .post
        }
    }
    
    
    var task: Task {
        switch self {
        case .login(info: let info):
            return .requestParameters(parameters: info, encoding: JSONEncoding.default)
        }
    }
    
    
    var headers: [String : String]? {
        switch self {
        case .login :
            return [:]
            
        }
    }
    
    
}
