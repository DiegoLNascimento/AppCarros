//
//  DetailCarView.swift
//  AppCarros
//
//  Created by Diego on 02/11/22.
//

import UIKit

final class DetailCarView: UIView {
    
    lazy var background1 = ImageViewDefault(text: "6",cornerRadius: 70, maskedCorners: [ .layerMinXMaxYCorner, .layerMaxXMaxYCorner])
    
    lazy var background2 = ImageViewDefault(text: "5")
    
    lazy var container = ImageViewDefault(backgroundColor: UIColor(white: 1, alpha: 0.8), cornerRadius: 30,maskedCorners: [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner])
    
    lazy var imageCar = ImageViewDefault()
    
    lazy var nameCars = LabelDefault(textAlignment: .center,font: .systemFont(ofSize: 27, weight: .heavy),textColor: .black, backgroundColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 0.7) )
    
    lazy var descriptionCar = LabelDefault(font: .systemFont(ofSize: 20, weight: .regular))
    
    lazy var type = LabelDefault(textAlignment: .left,font: .systemFont(ofSize: 20, weight: .regular))
    
    lazy var typeTitle = LabelDefault( text: "Type:",font: .systemFont(ofSize: 25, weight: .heavy),textColor: .white, backgroundColor: .black, cornerRadius: 30, maskedCorners: [.layerMinXMaxYCorner])

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        constraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        self.addSubview(background2)
        self.addSubview(background1)
        self.addSubview(container)
        self.addSubview(imageCar)
        self.addSubview(nameCars)
        self.addSubview(descriptionCar)
        self.addSubview(type)
        self.addSubview(typeTitle)
    }

    func constraints() {
        NSLayoutConstraint.activate([
            
            background1.topAnchor.constraint(equalTo: topAnchor),
            background1.leadingAnchor.constraint(equalTo: leadingAnchor),
            background1.trailingAnchor.constraint(equalTo: trailingAnchor),
            background1.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -450),
            
            background2.topAnchor.constraint(equalTo: background1.bottomAnchor, constant: -60),
            background2.leadingAnchor.constraint(equalTo: leadingAnchor),
            background2.trailingAnchor.constraint(equalTo: trailingAnchor),
            background2.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            container.centerXAnchor.constraint(equalTo: centerXAnchor),
            container.centerYAnchor.constraint(equalTo: centerYAnchor),
            container.widthAnchor.constraint(equalToConstant: 350),
            container.heightAnchor.constraint(equalToConstant: 350),
            
            imageCar.topAnchor.constraint(equalTo: topAnchor, constant: 165),
            imageCar.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageCar.widthAnchor.constraint(equalToConstant: 300),
            imageCar.heightAnchor.constraint(equalToConstant: 200),
            
            nameCars.topAnchor.constraint(equalTo: imageCar.bottomAnchor, constant: 05),
            nameCars.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameCars.widthAnchor.constraint(equalToConstant: 350),
            nameCars.heightAnchor.constraint(equalToConstant: 60),
            
            descriptionCar.topAnchor.constraint(equalTo: nameCars.bottomAnchor, constant: 10),
            descriptionCar.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionCar.widthAnchor.constraint(equalToConstant: 300),
            descriptionCar.heightAnchor.constraint(equalToConstant: 50),
            
            type.leadingAnchor.constraint(equalTo: typeTitle.trailingAnchor),
            type.widthAnchor.constraint(equalToConstant: 100),
            type.heightAnchor.constraint(equalToConstant: 50),
            type.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            
            typeTitle.leadingAnchor.constraint(equalTo: nameCars.leadingAnchor),
            typeTitle.widthAnchor.constraint(equalToConstant: 100),
            typeTitle.heightAnchor.constraint(equalToConstant: 50),
            typeTitle.bottomAnchor.constraint(equalTo: container.bottomAnchor),
        ])
    }
}
