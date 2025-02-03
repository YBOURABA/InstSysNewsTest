//
//  Article.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

// Identifiable is required for SwiftUI ForEach.
// Equatable is required for Tests
struct Article: Identifiable, Equatable {
    var id: String {
        return title + publishedAt.detailedFormatString
    }
    let source: String?
    let author: String?
    let title: String
    let description: String?
    let url: URL?
    let urlToImage: URL?
    let publishedAt: Date
}

