//
//  ArticleDetailsView.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import SwiftUI

struct ArticleDetailsView: View {
    @ObservedObject var viewModel: ArticleDetailsViewModel
    @State private var showWebView: Bool = false

    var body: some View {
        ScrollView {
            VStack {
                remoteImageView()
                articleInfoSection()
            }
        }
        .ignoresSafeArea()
        .sheet(isPresented: $showWebView) {
            WebView(url: viewModel.article.url)
        }
    }

    //MARK: - RemoteImageView
    private func remoteImageView() -> some View {
        AsyncImage(url: viewModel.article.urlToImage) { image in
            image
                .resizable()
        } placeholder: {
            Theme.Images.articlePlaceholder
                .resizable()
        }
        .aspectRatio(contentMode: .fill)
        .frame(width: UIScreen.main.bounds.width, height: Theme.Size.articleDetailsImageSize)
        .overlay(alignment: .bottomTrailing) {
            webViewButton()
        }
    }

    //MARK: - WebViewButton
    private func webViewButton() -> some View {
        Button(action: { showWebView.toggle() }) {
            Theme.Images.linkImg
                .font(.largeTitle)
                .tint(.white)
                .shadow(radius: Theme.CornerRadius.small)
                .padding()
        }
    }

    //MARK: - Article infos
    private func articleInfoSection() -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
            Text(viewModel.article.source.orEmpty + " • " + viewModel.article.publishedAt.detailedFormatString)
                .font(.subheadline)
            Text(viewModel.article.title)
                .font(.title2)
                .bold()
            Text(viewModel.article.description.orEmpty)
                .font(.callout)
                .foregroundStyle(.secondary)
        }
        .foregroundStyle(.darkPurple)
        .padding(Theme.Spacing.medium)
    }
}

#Preview {
    ArticleDetailsView(
        viewModel: ArticleDetailsViewModel(
            article:
                Article(
                    source: "BBC News",
                    author: nil,
                    title: "Medical jet carrying six crashes into Philadelphia neighbourhood - BBC.com",
                    description: "The Learjet was carrying four crew, a child patient and her mother when it crashed on Friday.",
                    url: URL(string: "https://www.bbc.com/news/articles/ckg0m5n8g0do"),
                    urlToImage: URL(string: "https://ichef.bbci.co.uk/news/1024/branded_news/9512/live/fb4cdbe0-e092-11ef-a819-277e390a7a08.jpg"),
                    publishedAt: Date()
                )
        )
    )
}
