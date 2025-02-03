//
//  WebView.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if let url = url {
            let request = URLRequest(url: url)
            webView.load(request)
            webView.allowsBackForwardNavigationGestures = true
        }
    }
}
