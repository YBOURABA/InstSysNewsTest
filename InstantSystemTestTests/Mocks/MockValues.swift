//
//  MockValues.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation
@testable import InstantSystemTest

enum MockValues {
    static let apiResponse = NewsResponse(
        status: "Ok",
        totalResults: 5,
        articles: successArticlesDTO
    )

    static let successArticlesDTO = [
        ArticleDTO(
            source: SourceDTO(id: nil, name: "BBC News"),
            author: nil,
            title: "Medical jet carrying six crashes into Philadelphia neighbourhood - BBC.com",
            description: "The Learjet was carrying four crew, a child patient and her mother when it crashed on Friday.",
            url: "https://www.bbc.com/news/articles/ckg0m5n8g0do",
            urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/9512/live/fb4cdbe0-e092-11ef-a819-277e390a7a08.jpg",
            publishedAt: Date()
        ),
        ArticleDTO(
            source: SourceDTO(id: nil, name: "BBC News"),
            author: nil,
            title: "Medical jet carrying six crashes into Philadelphia neighbourhood - BBC.com",
            description: "The Learjet was carrying four crew, a child patient and her mother when it crashed on Friday.",
            url: "https://www.bbc.com/news/articles/ckg0m5n8g0do",
            urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/9512/live/fb4cdbe0-e092-11ef-a819-277e390a7a08.jpg",
            publishedAt: Date()
        ),
        ArticleDTO(
            source: SourceDTO(id: nil, name: "BBC News"),
            author: nil,
            title: "Medical jet carrying six crashes into Philadelphia neighbourhood - BBC.com",
            description: "The Learjet was carrying four crew, a child patient and her mother when it crashed on Friday.",
            url: "https://www.bbc.com/news/articles/ckg0m5n8g0do",
            urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/9512/live/fb4cdbe0-e092-11ef-a819-277e390a7a08.jpg",
            publishedAt: Date()
        ),
        ArticleDTO(
            source: SourceDTO(id: nil, name: "BBC News"),
            author: nil,
            title: "Medical jet carrying six crashes into Philadelphia neighbourhood - BBC.com",
            description: "The Learjet was carrying four crew, a child patient and her mother when it crashed on Friday.",
            url: "https://www.bbc.com/news/articles/ckg0m5n8g0do",
            urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/9512/live/fb4cdbe0-e092-11ef-a819-277e390a7a08.jpg",
            publishedAt: Date()
        ),
        ArticleDTO(
            source: SourceDTO(id: nil, name: "BBC News"),
            author: nil,
            title: "Medical jet carrying six crashes into Philadelphia neighbourhood - BBC.com",
            description: "The Learjet was carrying four crew, a child patient and her mother when it crashed on Friday.",
            url: "https://www.bbc.com/news/articles/ckg0m5n8g0do",
            urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/9512/live/fb4cdbe0-e092-11ef-a819-277e390a7a08.jpg",
            publishedAt: Date()
        )

    ]

    static let successArticles = successArticlesDTO.asDomain
}
