//
//  ResultModel.swift
//  mygame
//
//  Created by Abd Wahid on 15/09/24.
//


struct ResultModel: Codable, Identifiable {
    var id: Int?
    let slug, name, released, description: String?
    let tba: Bool?
    let backgroundImage: String?
    let rating: Double?
    let ratingTop: Int?
    let ratings: [RatingModel]?
    let ratingsCount, reviewsTextCount, added: Int?
    let addedByStatus: AddedByStatusModel?
    let metacritic, playtime, suggestionsCount: Int?
    let updated: String?
    let userGame: JSONNull?
    let reviewsCount: Int?
    let saturatedColor, dominantColor: Color?
    
    enum CodingKeys: String, CodingKey {
        case id, slug, name, released, description, tba
        case backgroundImage = "background_image"
        case rating
        case ratingTop = "rating_top"
        case ratings
        case ratingsCount = "ratings_count"
        case reviewsTextCount = "reviews_text_count"
        case added
        case addedByStatus = "added_by_status"
        case metacritic, playtime
        case suggestionsCount = "suggestions_count"
        case updated
        case userGame = "user_game"
        case reviewsCount = "reviews_count"
        case saturatedColor = "saturated_color"
        case dominantColor = "dominant_color"
    }
}
