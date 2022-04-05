//
//  MoviesAPI.swift
//  MVVM
//
//  Created by Abdulrahman on 04/04/2022.
//

import Foundation


import Foundation

protocol MoviesAPIProtocol {
    
    func getMovies(completion: @escaping (Result<[Movie]?, NSError>) -> Void)
    
}


class MoviesAPI: BaseAPI<MoviesNetworking>, MoviesAPIProtocol {
    
    
    func getMovies(completion: @escaping (Result<[Movie]?, NSError>) -> Void) {
        self.fetchData(target: .getMoviesList, responseClass: [Movie].self) { (result) in
            completion(result)
            
        }
    }
    
   
}

