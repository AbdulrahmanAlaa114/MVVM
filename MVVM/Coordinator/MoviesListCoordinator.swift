//
//  MoviesListCoordinator.swift
//  MVVM
//
//  Created by Abdulrahman on 05/04/2022.
//

import Foundation
import UIKit


final class MoviesListCoordinator: BaseCoordinator{
    
    
    let navigationController : UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        
        let moviesViewController = MoviesListViewController(nibName: "\(MoviesListViewController.self)", bundle: nil)
        let viewModel = MoviesListViewModel()
        viewModel.coordinator = self
        moviesViewController.viewModel = viewModel
        navigationController.setViewControllers([moviesViewController], animated: false)
        
    }
    
    func startMovieDetails(movie: Movie){
        
        let movieDetailsCoordinator = MovieDetailsCoordinator(movieDetails: movie, navigationController: navigationController)
        movieDetailsCoordinator.parantCoordinator = self
        add(coordinator: movieDetailsCoordinator)
        movieDetailsCoordinator.start()
        
    }
    
    func removeMovieDetails(coordinator: BaseCoordinator){
        
        remove(coordinator: coordinator)
        
    }
    
}
