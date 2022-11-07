//
//  LabelDefault.swift
//  AppCarros
//
//  Created by Diego on 31/10/22.
//

import UIKit

class LabelDefault: UILabel {
    init(text: String = "", textAlignment: NSTextAlignment = NSTextAlignment(.center), font: UIFont = .systemFont(ofSize: 12), textColor: UIColor = UIColor.black, backgroundColor: UIColor = .clear, cornerRadius: CGFloat = CGFloat(),maskedCorners: CACornerMask = CACornerMask()) {
        super.init(frame: .zero)
        
        initDefault(text: text, textAlignment: textAlignment, font: font, textColor: textColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius, maskedCorners: maskedCorners)
    }
    
    private func initDefault(text: String, textAlignment: NSTextAlignment, font: UIFont, textColor: UIColor,backgroundColor: UIColor, cornerRadius: CGFloat, maskedCorners: CACornerMask ) {
        self.text = text
        self.textAlignment = textAlignment
        self.font = font
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.textAlignment = .center
        self.clipsToBounds = true
        self.numberOfLines = 0
        self.adjustsFontSizeToFitWidth = true
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = maskedCorners
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
