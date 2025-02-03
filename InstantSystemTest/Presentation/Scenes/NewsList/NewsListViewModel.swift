//
//  NewsListViewModel.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

@MainActor
final class NewsListViewModel: ObservableObject {
    private let newsRepository: NewsRepositoryProtocol
    private var router: NewsListRouter?

    @Published private(set) var articles = [Article]()
    @Published var state: ViewState = .loading

    init(newsRepository: NewsRepositoryProtocol = NewsRepository()) {
        self.newsRepository = newsRepository
    }

    func setRouter(_ router: NewsListRouter) {
        self.router = router
    }

    // Fetching Data
    func fetchData() async {
        do {
            state = .loading
            // To showcase loader
            try await Task.sleep(nanoseconds: 500_000_000)
            articles = try await newsRepository.getArticles()
            state = .success
        } catch let error as NetworkError {
            state = .failure(error)
        } catch {
            print("Unexpected error")
        }
    }


    // Showing article details
    func showDetails(of article: Article) {
        router?.showDetailsScreen(of: article)
    }

}
