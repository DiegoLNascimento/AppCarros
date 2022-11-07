//
//  CellController.swift
//  AppCarros
//
//  Created by Diego on 01/11/22.
//

import UIKit
import SDWebImage

class CellCar: UITableViewCell {
    
    static var identifier = "CellController"
    
    lazy var container = ImageViewDefault(backgroundColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 0.7), borderColor: UIColor(red: 251/255, green: 196/255, blue: 7/255, alpha: 1).cgColor, cornerRadius: 30, maskedCorners: [.layerMinXMinYCorner,.layerMaxXMaxYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner ] , borderWidth: 3)
    
    lazy var imageCar = ImageViewDefault()
    
    lazy var backNameCars = ImageViewDefault(text: "5", cornerRadius: 30, maskedCorners: [.layerMaxXMinYCorner,.layerMinXMaxYCorner])
    
    lazy var nameCar = LabelDefault( textAlignment: .left, font: .systemFont(ofSize: 20, weight: .heavy), textColor: .white )
    
    lazy var descriptionCars = LabelDefault(font: .systemFont(ofSize: 17),textColor: .white )
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        contraintsCell()
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func carCell(resultCar: Car?) {
        imageCar.sd_setImage(with: URL(string: resultCar?.urlFoto ?? ""))
        nameCar.text = resultCar?.nome ?? ""
    }
    
    func addViews() {
        self.addSubview(container)
        self.addSubview(imageCar)
        self.addSubview(backNameCars)
        self.addSubview(nameCar)
        self.addSubview(descriptionCars)
    }
    
    func contraintsCell() {
        NSLayoutConstraint.activate([
            
        container.topAnchor.constraint(equalTo: topAnchor, constant: 40),
        container.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
        container.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
        container.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        imageCar.topAnchor.constraint(equalTo: topAnchor),
        imageCar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150),
        imageCar.widthAnchor.constraint(equalToConstant: 220),
        imageCar.heightAnchor.constraint(equalToConstant: 140),
        
        nameCar.topAnchor.constraint(equalTo: imageCar.bottomAnchor),
        nameCar.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
        nameCar.widthAnchor.constraint(equalToConstant: 220),
        nameCar.heightAnchor.constraint(equalToConstant: 20),
        
        backNameCars.topAnchor.constraint(equalTo: imageCar.bottomAnchor,constant: -05),
        backNameCars.leadingAnchor.constraint(equalTo: container.leadingAnchor,constant: 1.5),
        backNameCars.widthAnchor.constraint(equalToConstant: 250),
        backNameCars.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -2.5)
        
        ])
    }
}
   
