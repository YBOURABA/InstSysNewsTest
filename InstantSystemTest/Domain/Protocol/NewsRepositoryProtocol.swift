//
//  NewsRepositoryProtocol.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

protocol NewsRepositoryProtocol {
    func getArticles() async throws -> [Article]
}
