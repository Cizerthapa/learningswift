import Foundation

struct ProductResponse: Codable {
    let products: [Product]
    let total: Int
    let skip: Int
    let limit: Int
}

struct Product: Identifiable, Codable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let thumbnail: String
    let category: String?
    let discountPercentage: Double?
    let rating: Double?
    let stock: Int?
    let brand: String?
    
    // Custom CodingKeys to handle property name mismatches
    private enum CodingKeys: String, CodingKey {
        case id, title, description, price, thumbnail, category, discountPercentage, rating, stock, brand
    }
}
