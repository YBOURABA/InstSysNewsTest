//
//  ArticleDetailsViewModel.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

final class ArticleDetailsViewModel: ObservableObject {
    @Published var article: Article

    init(article: Article) {
        self.article = article
    }
    
}
