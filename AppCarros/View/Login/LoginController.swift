//
//  ViewController.swift
//  AppCarros
//
//  Created by Diego on 28/10/22.
//

import UIKit

class LoginController: UIViewController {
    
    var custonLogin: LoginView?
    let request = RequestLogin()

    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonLogin()
        setupButton()
       
    }
    
    func setCustonLogin() {
        custonLogin = LoginView()
        view = custonLogin
    }
    
    func setupButton() {
        custonLogin?.setButtonLogin(target: self, action: #selector(setupRequest))
        custonLogin?.setButtonHelp(targuet: self, action: #selector(help))
    }
    
    @objc private func setupRequest() {
        let userName = custonLogin?.loginEmail.text ?? ""
        let passWord = custonLogin?.password.text ?? ""
        
        request.requestLogin(username: userName, password: passWord) {[weak self] success in
            if success {
                self?.forCars()
            }else {
                self?.erro()
            }
        }
    }
    
    @objc private func help() {
        let alert = UIAlertController(title: "Ajuda", message: " Logar com \n \n Login = user \n \n Senha = 123" ,preferredStyle: .alert)
        
        let buttonAlert = UIAlertAction(title: "voltar", style: .default) { alert in}
        
        alert.addAction(buttonAlert)
        self.present(alert, animated: true)
    }
    
    private func forCars() {
        let cars = CarsController()
        let nav = UINavigationController(rootViewController: cars)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
    
    private func erro() {
        let alert = UIAlertController(title: "Erro", message: "Senha ou usuario incorretos", preferredStyle: .alert)
        
        let alertButton = UIAlertAction(title: "Ok", style: .cancel) {alert in}
        
        alert.addAction(alertButton)
        self.present(alert, animated: true)
    }
}

