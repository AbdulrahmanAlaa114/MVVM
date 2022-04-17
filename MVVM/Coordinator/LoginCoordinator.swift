//
//  LoginCoordinator.swift
//  MVVM
//
//  Created by Abdulrahman on 04/04/2022.
//

import Foundation
import UIKit

final class LoginCoordinator: BaseCoordinator{
    
    private let navigationController: UINavigationController
    
    init(navigationController:UINavigationController){
        self.navigationController = navigationController
    }
    
    override func start() {
        
        let loginViewVontroller = LoginViewController(nibName: "LoginViewController", bundle: nil)
        
        
        
        let loginViewModel = LoginViewModel()
        loginViewModel.coordinator = self
        loginViewVontroller.viewModel = loginViewModel
        navigationController.setViewControllers([loginViewVontroller], animated: false)
        
    }
    
    

    func startMovieList(){
        
        let movieListCoordinator = MoviesListCoordinator(navigationController: navigationController)
        childCoordinators.append(movieListCoordinator)
        movieListCoordinator.start()
        
    }
}

