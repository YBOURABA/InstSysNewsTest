//
//  NetwrokProviderProtocol.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

protocol NetworkProviderProtocol {
    func performRequest<T: APIRequest>(with request: T) async throws -> T.Response
}
