//
//  NewsRepository.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

final class NewsRepository: NewsRepositoryProtocol {
    private var dataSource: NewsDataSourceProtocol

    init(dataSource: NewsDataSourceProtocol = NewsDataSource()) {
        self.dataSource = dataSource
    }

    func getArticles() async throws -> [Article] {
        try await dataSource.getArticles()
    }
}
