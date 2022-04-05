//
//  UsersAPI.swift
//  NetworkLayer
//
//  Created by Ahmed masoud on 5/21/20.
//  Copyright © 2020 Ahmed Masoud. All rights reserved.
//

import Foundation

protocol AuthAPIProtocol {
    
    func login(info: [String:Any] ,completion: @escaping (Result<BaseResponse<LoginModel>?, NSError>) -> Void)

}


class AuthAPI: BaseAPI<AuthNetworking>, AuthAPIProtocol {
    
 
    func login(info: [String:Any] ,completion: @escaping (Result<BaseResponse<LoginModel>?, NSError>) -> Void) {
        self.fetchData(target: .login(info: info), responseClass: BaseResponse<LoginModel>.self) { (result) in
            completion(result)
            
        }
    }

    
    
}
