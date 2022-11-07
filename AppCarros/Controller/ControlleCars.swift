//
//  ControlleCars.swift
//  AppCarros
//
//  Created by Diego on 02/11/22.
//

import UIKit

class ControlleCars: NSObject {
    
    let request = RequestCars()
    var carss: Cars?
    
    func requestCars(completion: @escaping(Bool) -> Void) {
        request.request { [weak self] cars, success in
            if success {
                self?.carss = cars
                completion(true)
            }else {
                completion(false)
            }
        }
    }
    
    func numberOfRows() -> Int {
        return carss?.count ?? 0
    }
    
    func getIndexPath(indexpath: IndexPath) -> Car? {
        return carss?[indexpath.row]
    }
}
