//
//  NewsListViewModelTests.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import XCTest
import Combine
@testable import InstantSystemTest

final class NewsListViewModelTests: XCTestCase {

    var cancellables = Set<AnyCancellable>()

    func testNewsListWithValues() async {
        // Given
        let repository = NewsRepository(dataSource: NewsDataSourceMock())
        let viewModel = await NewsListViewModel(newsRepository: repository)

        // fetch articles success
        await viewModel.fetchData()

        // Assert
        await viewModel.$articles.sink(receiveValue: { articles in
            XCTAssertEqual(articles.count, 5)
        }).store(in: &cancellables)
    }

    func testNewsListWithError() async {
        // Given
        let networkProvider = NetworkProviderErrorMock<Any>()
        let repository = NewsRepository(dataSource: NewsDataSource(networkProvider: networkProvider))
        let viewModel = await NewsListViewModel(newsRepository: repository)

        let expectedStates: [ViewState] = [.loading, .failure(NetworkError.badUrl)]
        await viewModel.$state.dropFirst().collect(2).sink(receiveValue: { states in
            XCTAssertEqual(states, expectedStates)
        }).store(in: &cancellables)

        // fetch articles
        await viewModel.fetchData()
        
    }

    func testShowDetails() async {
        // Given
        let repository = NewsRepository(dataSource: NewsDataSourceMock())

        let viewModel = await NewsListViewModel(newsRepository: repository)
        let router = NewsListRouterMock(output: nil)
        await viewModel.setRouter(router)

        // Show article details
        await viewModel.fetchData()
        await viewModel.showDetails(of: MockValues.successArticles.first!)

        // Assert
        XCTAssertTrue(router.goToArticleDetails)
    }
}
