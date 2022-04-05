//
//  AppCoordinator.swift
//  EventesApp
//
//  Created by Mac on 01/03/2022.
//

import UIKit


final class AppCoordinator: BaseCoordinator{
    
    private let window : UIWindow
    
    init(window:UIWindow){	
        self.window = window
    }
    
    override func start() {
        
        let navigationController = UINavigationController()
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        add(coordinator: loginCoordinator)
        
        loginCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
}
