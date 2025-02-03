//
//  ArticleDTO.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

//MARK: - NewsResponse
struct NewsResponse: Decodable {
    let status: String
    let totalResults: Int
    let articles: [ArticleDTO]
}

//MARK: - Article DTO
// Decodable is required to convert the JSON return by the GET request.
struct ArticleDTO: Decodable {
    let source: SourceDTO?
    let author: String?
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
}

extension ArticleDTO {
    var asDomain: Article {
        .init(
            source: source?.name,
            author: author,
            title: title,
            description: description,
            url: URL(string: url),
            urlToImage: URL(string: urlToImage.orEmpty),
            publishedAt: publishedAt
        )
    }
}

//MARK: - Source DTO
struct SourceDTO: Decodable {
    let id: String?
    let name: String
}

extension Collection where Element == ArticleDTO {
    var asDomain: [Article] { self.map { $0.asDomain } }
}
