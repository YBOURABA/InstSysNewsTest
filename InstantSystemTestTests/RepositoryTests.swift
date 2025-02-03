//
//  RepositoryTests.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import XCTest
@testable import InstantSystemTest

final class RepositoryTests: XCTestCase {

    func testFetchingArticles() async {
        let newsDataSource = NewsDataSourceMock()

        let repository = NewsRepository(dataSource: newsDataSource)

        do {
            let articles = try await repository.getArticles()

            XCTAssertEqual(articles.count, 5)
            XCTAssertEqual(articles.first, MockValues.successArticles.first)
        } catch {
            XCTFail()
        }
    }
}
