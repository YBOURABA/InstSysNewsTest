//
//  NewsDataSourceProtocol.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

protocol NewsDataSourceProtocol {
    func getArticles() async throws -> [Article]
}
