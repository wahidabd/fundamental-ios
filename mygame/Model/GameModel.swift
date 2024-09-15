//
//  GameModel.swift
//  mygame
//
//  Created by Abd Wahid on 15/09/24.
//


struct GameModel: Codable {
    let count: Int?
    let next: String?
    let previous: JSONNull?
    let results: [ResultModel]?
    
    enum CodingKeys: String, CodingKey {
            case count, next, previous, results
    }
}
