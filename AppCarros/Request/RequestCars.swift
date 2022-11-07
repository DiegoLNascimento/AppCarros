//
//  RequestCars.swift
//  AppCarros
//
//  Created by Diego on 02/11/22.
//

import UIKit
import Alamofire



class RequestCars: NSObject {
    
    
    
    func request(completion: @escaping(Cars?, Bool) -> Void ) {
        
        let token = UserDefaults.standard.object(forKey: "token") as? String ?? ""
        let urlbase = "https://carros-springboot.herokuapp.com/api/v2/carros"
        let key = ["Authorization":"Bearer \(token)"]
        let header = HTTPHeaders(key)
        
        AF.request(urlbase ,method: .get, headers:  header).response { response in
            if response.response?.statusCode == 200 {
                do {
                    let cars = try JSONDecoder().decode(Cars.self, from: response.data ?? Data())
                    completion(cars,true)
                }catch {
                    completion(nil,false)
                }
            }else{
                completion(nil,false)
            }
        }
    }
}
