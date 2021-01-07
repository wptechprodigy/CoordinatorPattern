//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by waheedCodes on 07/01/2021.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    /// Tells the coordinator something happened...handle it.
    func eventOccurred(with type: Event)
    
    /// A way to start the coordinator
    func start()
}

// MARK: - A reference for the VC to the coordinator to relay events

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
