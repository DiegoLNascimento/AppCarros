//
//  RequestLogin.swift
//  AppCarros
//
//  Created by Diego on 02/11/22.
//

import Foundation
import Alamofire

class RequestLogin: NSObject {
    
    func requestLogin(username: String, password: String, completion: @escaping(Bool) -> Void) {
        
        let url = "https://carros-springboot.herokuapp.com/api/v2/login"
        let param = ["username": username, "password": password]
        
        AF.request(url, method: .post, parameters: param, encoder: JSONParameterEncoder.default) .response { response in
            if response.response?.statusCode == 200{
                do {
                    let login = try JSONDecoder().decode(Login.self, from: response.data ?? Data())
                    UserDefaults.standard.setValue(login.token ?? "", forKey: "token")
                    completion(true)
                }catch {
                    completion(false)
                }
            }else {
                completion(false)
            }
        }
    }
}
