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
        view.backgroundColor = .systemBackground
        title = "Home"
        
        let button = UIButton(frame: CGRect(x: 0,
                                            y: 0,
                                            width: 220,
                                            height: 55))
        view.addSubview(button)
        button.setTitle("Click!!!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPink
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
    }
}

