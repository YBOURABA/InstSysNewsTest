//
//  NewsDataSource.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

class NewsDataSource: NewsDataSourceProtocol {
    var networkProvider: NetworkProviderProtocol

    init(networkProvider: NetworkProviderProtocol = NetworkProvider()) {
        self.networkProvider = networkProvider
    }

    func getArticles() async throws -> [Article] {
        let request = GetUsersRequest(query: "actualités", language: "fr")
        return try await networkProvider.performRequest(with: request).articles.asDomain
    }
}
