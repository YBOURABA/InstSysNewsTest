//
//  ArticleWebView.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import SwiftUI

struct ArticleWebView: View {
    let articleUrl: URL?
    var body: some View {
        WebView(url: articleUrl)
    }
}

#Preview {
    ArticleWebView(articleUrl: nil)
}
