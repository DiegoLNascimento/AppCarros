//
//  tsteViewController.swift
//  AppCarros
//
//  Created by Diego on 03/11/22.
//

import UIKit

class tsteViewController: UIViewController {
    
    lazy var teste:UIView = {
        let teste = UIView(frame: .zero)
        teste.translatesAutoresizingMaskIntoConstraints = false
        return teste
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(teste)
        tes()

    }
    
    func tes() {
        NSLayoutConstraint.activate([
            teste.topAnchor.constraint(equalTo: view.topAnchor),
            teste.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            teste.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            teste.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}
