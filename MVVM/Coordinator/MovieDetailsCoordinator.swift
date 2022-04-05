//
//  MovieDetailsCoordinator.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import Foundation
import UIKit

final class MovieDetailsCoordinator: BaseCoordinator{
    
    private let navigationController:UINavigationController
    let movieDetails: Movie
    
    var parantCoordinator: MoviesListCoordinator?
    
    init(movieDetails: Movie,
         navigationController: UINavigationController
    ) {
        self.movieDetails = movieDetails
        self.navigationController = navigationController
    }
    
    override func start() {
        
        let movieDetialsViewController = MovieDetailsViewController(nibName: "\(MovieDetailsViewController.self)", bundle: nil)
        let viewModel = MovieDetailsViewModel(movieDetails: movieDetails)
        viewModel.coordinator = self
        movieDetialsViewController.viewModel = viewModel
//        navigationController.setViewControllers([movieDetialsViewController], animated: false)
        movieDetialsViewController.modalPresentationStyle = .fullScreen
        navigationController.present(movieDetialsViewController, animated: true, completion: nil)
    }
    
    func finshMovieDetails(){
        parantCoordinator?.removeMovieDetails(coordinator: self)
    }
    

    
    
}
