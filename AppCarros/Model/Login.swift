//// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let login = try? newJSONDecoder().decode(Login.self, from: jsonData)

import Foundation

// MARK: - Login
struct Login: Codable {
    let id: Int?
    let login, nome, email: String?
    let urlFoto: String?
    let token: String?
    let roles: [String]?
}

