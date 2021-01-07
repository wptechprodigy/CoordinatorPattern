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
        
    }
    
    func start() {
        var coordinationgViewController: UIViewController & Coordinating = ViewController()
        coordinationgViewController.coordinator = self
        navigationController?.setViewControllers([coordinationgViewController],
                                                 animated: false)
    }
}
