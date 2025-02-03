//
//  NetworkProviderMock.swift
//  InstantSystemTestTests
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation
@testable import InstantSystemTest

class NetworkProviderMock<T>: NetworkProviderProtocol {

    private let successValues: T

    init(successValues: T) {
        self.successValues = successValues
    }

    func performRequest<T>(with request: T) async throws -> T.Response where T : InstantSystemTest.APIRequest {
        successValues as! T.Response
    }
}

class NetworkProviderErrorMock<T>: NetworkProviderProtocol {
    func performRequest<T>(with request: T) async throws -> T.Response where T : InstantSystemTest.APIRequest {
        throw NetworkError.badUrl
    }
}
