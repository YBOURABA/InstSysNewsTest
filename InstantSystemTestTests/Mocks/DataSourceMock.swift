//
//  DataSourceMocks.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation
@testable import InstantSystemTest

struct NewsDataSourceMock: NewsDataSourceProtocol {
    func getArticles() async throws -> [InstantSystemTest.Article] {
        MockValues.successArticles 
    }
}
