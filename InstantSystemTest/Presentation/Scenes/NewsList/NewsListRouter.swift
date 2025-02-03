//
//  NewsListRouter.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

protocol NewsListRouterOutput: AnyObject {
    func showDetailsScreen(of article: Article)
}

class NewsListRouter {
    weak var output: NewsListRouterOutput?

    init(output: NewsListRouterOutput?) {
        self.output = output
    }

    func showDetailsScreen(of article: Article) {
        output?.showDetailsScreen(of: article)
    }
}
