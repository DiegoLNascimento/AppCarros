//
//  ImageViewDefault.swift
//  AppCarros
//
//  Created by Diego on 31/10/22.
//

import UIKit

class ImageViewDefault: UIImageView {
    
    init(text: String = "",backgroundColor: UIColor = .clear,borderColor: CGColor = UIColor.clear.cgColor, cornerRadius: CGFloat = 0, maskedCorners: CACornerMask = CACornerMask(), borderWidth: CGFloat = CGFloat()) {
        super.init(frame: .zero)
        initDefault(text: text, backgroundColor: backgroundColor, borderColor: borderColor, cornerRadius: cornerRadius, maskedCorners: maskedCorners, borderWidth: borderWidth)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String, backgroundColor: UIColor, borderColor: CGColor, cornerRadius: CGFloat, maskedCorners: CACornerMask, borderWidth: CGFloat) {
        self.image = UIImage(named: text)
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = maskedCorners
        self.clipsToBounds = true
        self.layer.borderColor = borderColor
        self.backgroundColor = backgroundColor
        self.layer.borderWidth = borderWidth
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
