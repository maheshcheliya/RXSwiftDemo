//
//  AppCoordinator.swift
//  RXSwiftDemo
//
//  Created by Mahesh on 01/08/21.
//

import UIKit

class AppCoordinator {
    var window: UIWindow
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = ViewController.instantiate(viewModel: RestaurantListViewModel())
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
