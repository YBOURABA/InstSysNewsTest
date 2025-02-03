//
//  DataSourceTests.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import XCTest
@testable import InstantSystemTest

final class DataSourceTests: XCTestCase {

    func testNewsDataSource() async {
        let networkProvider = NetworkProviderMock(successValues: MockValues.apiResponse)
        let dataSource = NewsDataSource(networkProvider: networkProvider)

        do {
            let articles = try await dataSource.getArticles()
            XCTAssertEqual(articles.count, 5)
            XCTAssertEqual(articles.first, MockValues.successArticles.first)
        } catch {
            XCTFail()
        }
    }

}
