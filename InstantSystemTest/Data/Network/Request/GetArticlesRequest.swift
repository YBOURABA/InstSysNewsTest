//
//  GetArticlesRequest.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 03/02/2025.
//

import Foundation

protocol APIRequest: Encodable {
    associatedtype Response: Decodable
    /// Endpoint for this request (last part of the URL)
    var resourceName: String { get }

    /// Request parameters
    var parameters: [String: String] { get }
}

struct GetUsersRequest: APIRequest {
    typealias Response = NewsResponse

    // Used endpoint "everything" instead of "top-headlines" because "language=fr" return more results than "country=fr"
    var resourceName: String {
        return "everything"
    }

    // ApiKey should be in a keychain, plist or remoteConfig
    private let apiKey: String = "2831ec4bc3f04c688750049ba186b14d"
    private let query: String
    private let language: String

    init(query: String, language: String) {
        self.query = query
        self.language = language
    }

    var parameters: [String: String] {
        var params = [String: String]()

        params["q"] = query
        params["language"] = language
        params["sortBy"] = "publishedAt"
        params["apikey"] = apiKey

        return params
    }
}
