
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cars = try? newJSONDecoder().decode(Cars.self, from: jsonData)

import Foundation

// MARK: - Car
struct Car: Codable {
    let id: Int?
    let nome: String?
    let tipo: Tipo?
    let descricao: String?
    let urlFoto: String?
    let urlVideo: String?
    let latitude, longitude: String?
}

enum Tipo: String, Codable {
    case classicos = "classicos"
    case esportivos = "esportivos"
    case luxo = "luxo"
}

typealias Cars = [Car]
