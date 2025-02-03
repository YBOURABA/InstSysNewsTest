//
//  ArticleListCell.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import SwiftUI

struct ArticleListCell: View {
    var article: Article

    var body: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
            AsyncImage(url: article.urlToImage) { image in
                image
                    .resizable()
            }  placeholder: {
                Theme.Images.articlePlaceholder
                    .resizable()
            }
            .aspectRatio(contentMode: .fit)
            .clipShape(.rect(cornerRadius: Theme.CornerRadius.standard))
            .frame(maxWidth: .infinity)
            .overlay(alignment: .topTrailing) {
                Text(article.publishedAt.detailedFormatString)
                    .font(.caption)
                    .foregroundStyle(.darkPurple)
                    .padding(Theme.Spacing.medium)
                    .background()
                    .clipShape(Capsule())
                    .shadow(radius: Theme.CornerRadius.small)
                    .padding(Theme.Spacing.medium)
            }
            Text(article.source.orEmpty)
                .font(.caption)
            Text(article.title)
                .bold()
        }
        .foregroundStyle(.darkPurple)
        .padding(.horizontal)
    }
}

#Preview {
    ArticleListCell(
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
}
