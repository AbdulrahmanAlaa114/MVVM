//
//  MoviesModel.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import Foundation



struct Movie: Codable{
    let title: String
    let image: String
    let rating: Double
    let releaseYear: Int
    let genre: [String]
}
