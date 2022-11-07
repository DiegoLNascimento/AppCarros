//
//  ConttrolerDetail.swift
//  AppCarros
//
//  Created by Diego on 03/11/22.
//

import UIKit

class ControllerDetail: NSObject {
    
    var carDetail: Car?
    
    func deteilCars(cars: Car) {
        self.carDetail = cars
    }
    
    var imageCar: String {
        return carDetail?.urlFoto ?? ""
    }
    
    var nameCar: String {
        return carDetail?.nome ?? ""
    }
    
    var descriptionCar: String {
        return carDetail?.descricao ?? ""
    }
    
    var typeCar: String {
        return carDetail?.tipo?.rawValue ?? "" 
    }
    
    var videoCar: String {
        return carDetail?.urlVideo ?? ""
    }
}
