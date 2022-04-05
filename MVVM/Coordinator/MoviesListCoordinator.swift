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
        moviesViewController.viewModel = MoviesListViewModel()
        navigationController.setViewControllers([moviesViewController], animated: false)
        
    }
    
}
