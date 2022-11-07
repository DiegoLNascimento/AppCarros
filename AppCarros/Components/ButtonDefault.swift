//
//  ButtonDefault.swift
//  AppCarros
//
//  Created by Diego on 01/11/22.
//

import UIKit

class ButtonDefault: UIButton {
    
    init(title: String = "",titleColor: UIColor = .clear, backgroundColor: UIColor = .clear, cornerRadius: CGFloat = CGFloat(), maskedCorners: CACornerMask = CACornerMask()) {
        super.init(frame: .zero)
        
        initDefault(title: title, titleColor: titleColor, backgroundColor: backgroundColor,cornerRadius: cornerRadius, maskedCorners: maskedCorners)
    }
    
    private func initDefault(title: String,titleColor: UIColor, backgroundColor: UIColor, cornerRadius: CGFloat, maskedCorners: CACornerMask ) {
        self.clipsToBounds = true
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.setImage(UIImage(named: title), for: .normal)
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = maskedCorners
        self.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
