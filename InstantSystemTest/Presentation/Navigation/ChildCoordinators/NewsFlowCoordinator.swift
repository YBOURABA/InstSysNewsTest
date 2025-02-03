//
//  NewsFlowCoordinator.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation
import UIKit
import SwiftUI

final class NewsFlowCoordinator: Coordinator {
    private let router: RouterProtocol
    var childCoordinators = [Coordinator]()
    var finishFlow: (() -> Void)?

    init(router: RouterProtocol) {
        self.router = router
    }

    func start() {
        let viewModel = NewsListViewModel()
        viewModel.setRouter(NewsListRouter(output: self))
        let vc = UIHostingController(rootView: NewsListView(viewModel: viewModel))
        router.setRootModule(vc, hideBar: false)
    }

    func showDetails(of article: Article) {
        let viewModel = ArticleDetailsViewModel(article: article)
        let vc = UIHostingController(rootView: ArticleDetailsView(viewModel: viewModel))
        router.push(vc)
    }
}

extension NewsFlowCoordinator: NewsListRouterOutput {
    func showDetailsScreen(of article: Article) {
        showDetails(of: article)
    }
}
