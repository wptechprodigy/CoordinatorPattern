//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  This is conforms to the coordinator protocol
//
//  Created by waheedCodes on 07/01/2021.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            var viewController: UIViewController & Coordinating = SecondViewController()
            viewController.coordinator = self
            navigationController?.pushViewController(viewController,
                                                     animated: true)
        }
    }
    
    func start() {
        var coordinationgViewController: UIViewController & Coordinating = ViewController()
        coordinationgViewController.coordinator = self
        navigationController?.setViewControllers([coordinationgViewController],
                                                 animated: false)
    }
}
