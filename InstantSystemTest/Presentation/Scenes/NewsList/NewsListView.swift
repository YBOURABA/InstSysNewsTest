//
//  NewsListView.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import SwiftUI

struct NewsListView: View {
    @ObservedObject var viewModel: NewsListViewModel

    var body: some View {
        Group {
            switch viewModel.state {
            case let .failure(error):
                ErrorOverlay(error: error, retryAction: viewModel.fetchData)

            case .loading:
                LoadingOverlay()

            case .success:
                ScrollView {
                    LazyVStack(spacing: Theme.Spacing.medium) {
                        ForEach(viewModel.articles) { article in
                            ArticleListCell(article: article)
                                .onTapGesture {
                                    viewModel.showDetails(of: article)
                                }
                        }
                        if viewModel.articles.isEmpty {
                            EmptyOverlay {
                                await viewModel.fetchData()
                            }
                        }
                    }
                }
                .padding(.top, Theme.Spacing.medium)
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        NewsToolBar()
                    }
                }
                .safeAreaPadding(.top, Theme.Spacing.small)
                .refreshable {
                    // Realod news on refresh
                    await viewModel.fetchData()
                }
            }
        }
        // Using a custom view modifier otherwise the task is triggered when poping back from detail view.
        .onFirstAppearTask {
            await viewModel.fetchData()
        }
    }
}

#Preview {
    NewsListView(viewModel: NewsListViewModel())
}
