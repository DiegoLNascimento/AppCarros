//
//  DetailControllerViewController.swift
//  AppCarros
//
//  Created by Diego on 02/11/22.
//

import UIKit
import SDWebImage


class DetailController: UIViewController {
    
    let controller = ControllerDetail()
    
    var detaiLCuston: DetailCarView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDetailCuston()
        carsDetail()
    }
    
    func setDetailCuston() {
        detaiLCuston = DetailCarView()
        view = detaiLCuston
        
    }
    
    func carsDetail() {
        detaiLCuston?.imageCar.sd_setImage(with: URL(string: controller.imageCar))
        detaiLCuston?.nameCars.text = controller.nameCar
        detaiLCuston?.descriptionCar.text = controller.descriptionCar
        detaiLCuston?.type.text = controller.typeCar
    }
}
