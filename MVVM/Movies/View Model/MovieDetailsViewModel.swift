//
//  MovieDetailsViewModel.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import Foundation


class MovieDetailsViewModel{
    
    let movieDetails: Movie
    var coordinator: MovieDetailsCoordinator!
    
    init(movieDetails:Movie) {
        self.movieDetails = movieDetails
    }
    
    func viewDidDisappear(){
        coordinator.finshMovieDetails()
    }
 
 
}
