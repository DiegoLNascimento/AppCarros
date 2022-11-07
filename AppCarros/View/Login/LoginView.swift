//
//  LoginView.swift
//  AppCarros
//
//  Created by Diego on 28/10/22.
//

import UIKit

final class LoginView: UIView {
    
    lazy var backgroundLogin = ImageViewDefault(text: "3", borderColor: UIColor.clear.cgColor)
    
    lazy var DreamCars = LabelDefault(text: "Carros", font: .systemFont(ofSize: 40, weight: .heavy), textColor: .white)
    
    lazy var container = ImageViewDefault(text: "5", borderColor: UIColor.clear.cgColor, cornerRadius: 30, maskedCorners: [.layerMinXMinYCorner,.layerMaxXMinYCorner])
    
    lazy var loginEmail = TexfieldDefault(text: "Email")
    
    lazy var password = TexfieldDefault(text: "Senha", isSecureTextEntry: true)
    
    lazy var keepLoggedIn = LabelDefault(text: "Manter logado", textAlignment: .left, textColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1))
    
    lazy var forgotPassword = LabelDefault(text: "Esqueceu a senha", textColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1))
    
    lazy var buttonLogin = ButtonDefault(title: "Login", titleColor: .white, backgroundColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1),cornerRadius: 15, maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner])
    
    lazy var labelRegistration = LabelDefault(text: "Ainda não tem cadastro?",textAlignment: .left, font: .systemFont(ofSize: 12), textColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1))
    
    lazy var createAccount = LabelDefault(text: "Criar uma conta", textAlignment: .left, font: .systemFont(ofSize: 12), textColor: .white)

    lazy var buttonHelp = ButtonDefault(title: "Ajuda ?", titleColor: .white)

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        contrainsts()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setButtonLogin( target: Any?, action: Selector) {
        buttonLogin.addTarget(target, action: action, for: .touchUpInside)
    }
    
    public func setButtonHelp(targuet: Any?, action: Selector ) {
        buttonHelp.addTarget(targuet, action: action, for: .touchUpInside)
    }
    
    func addView() {
        self.addSubview(backgroundLogin)
        self.addSubview(container)
        self.addSubview(DreamCars)
        self.addSubview(loginEmail)
        self.addSubview(password)
        self.addSubview(keepLoggedIn)
        self.addSubview(forgotPassword)
        self.addSubview(buttonLogin)
        self.addSubview(labelRegistration)
        self.addSubview(createAccount)
        self.addSubview(buttonHelp)
    }
    
    func contrainsts() {
        NSLayoutConstraint.activate([
            
            backgroundLogin.topAnchor.constraint(equalTo: topAnchor),
            backgroundLogin.centerXAnchor.constraint(equalTo: centerXAnchor),
            backgroundLogin.widthAnchor.constraint(equalTo: widthAnchor),
            backgroundLogin.heightAnchor.constraint(equalToConstant: 500),
            
            container.topAnchor.constraint(equalTo: topAnchor, constant: 350),
            container.centerXAnchor.constraint(equalTo: centerXAnchor),
            container.widthAnchor.constraint(equalTo: widthAnchor),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            DreamCars.topAnchor.constraint(equalTo: topAnchor,constant: 430),
            DreamCars.centerXAnchor.constraint(equalTo: centerXAnchor),
            DreamCars.widthAnchor.constraint(equalToConstant: 280),
            DreamCars.heightAnchor.constraint(equalToConstant: 55),
            
            loginEmail.topAnchor.constraint(equalTo: backgroundLogin.bottomAnchor,constant: 20),
            loginEmail.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginEmail.widthAnchor.constraint(equalToConstant: 280),
            loginEmail.heightAnchor.constraint(equalToConstant: 55),
            
            password.topAnchor.constraint(equalTo: loginEmail.bottomAnchor, constant: 10),
            password.centerXAnchor.constraint(equalTo: centerXAnchor),
            password.widthAnchor.constraint(equalToConstant: 280),
            password.heightAnchor.constraint(equalToConstant: 55),
            
            keepLoggedIn.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),
            keepLoggedIn.leadingAnchor.constraint(equalTo: password.leadingAnchor),
            keepLoggedIn.widthAnchor.constraint(equalToConstant: 90),
            keepLoggedIn.heightAnchor.constraint(equalToConstant: 20),
            
            forgotPassword.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10),
            forgotPassword.trailingAnchor.constraint(equalTo: password.trailingAnchor),
            forgotPassword.widthAnchor.constraint(equalToConstant: 110),
            forgotPassword.heightAnchor.constraint(equalToConstant: 20),
            
            buttonLogin.topAnchor.constraint(equalTo: keepLoggedIn.bottomAnchor, constant: 15),
            buttonLogin.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonLogin.widthAnchor.constraint(equalToConstant: 280),
            buttonLogin.heightAnchor.constraint(equalToConstant: 55),
            
            labelRegistration.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 10),
            labelRegistration.leadingAnchor.constraint(equalTo: buttonLogin.leadingAnchor, constant: 20),
            labelRegistration.widthAnchor.constraint(equalToConstant: 150),
            labelRegistration.heightAnchor.constraint(equalToConstant: 20),
            
            createAccount.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 10),
            createAccount.leadingAnchor.constraint(equalTo: labelRegistration.trailingAnchor),
            createAccount.widthAnchor.constraint(equalToConstant: 90),
            createAccount.heightAnchor.constraint(equalToConstant: 20),
            
            buttonHelp.topAnchor.constraint(equalTo: createAccount.bottomAnchor, constant: 10),
            buttonHelp.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonHelp.widthAnchor.constraint(equalToConstant: 70),
            buttonHelp.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
