//
//  NewsListRouter.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation
@testable import InstantSystemTest

class NewsListRouterMock: NewsListRouter {
    var goToArticleDetails = false

    override func showDetailsScreen(of article: Article) {
        goToArticleDetails = true
    }
}
