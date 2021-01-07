//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by waheedCodes on 07/01/2021.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Home"
    }

}

