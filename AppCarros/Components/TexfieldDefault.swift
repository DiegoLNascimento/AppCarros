//
//  TexfieldDefault.swift
//  AppCarros
//
//  Created by Diego on 31/10/22.
//

import UIKit

class TexfieldDefault: UITextField {
    
    init(text: String = "", isSecureTextEntry: Bool = false) {
        super.init(frame: .zero)
        
        initDefalt(text: text, isSecureTextEntry: isSecureTextEntry)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefalt(text: String, isSecureTextEntry: Bool) {
        self.layer.borderWidth = 2.3
        self.layer.borderColor = .init(red: 251/255, green: 196/255, blue: 7/255, alpha: 1)
        self.textAlignment = .center
        self.attributedPlaceholder = NSAttributedString(
            string: text ,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1)])
        self.layer.cornerRadius = 15
        self.clipsToBounds = true
        self.textColor = .white
        self.isSecureTextEntry = isSecureTextEntry
        self.autocapitalizationType = .none
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
