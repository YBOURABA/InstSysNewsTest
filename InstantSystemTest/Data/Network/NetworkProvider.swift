//
//  NetworkProvider.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

struct NetworkProvider: NetworkProviderProtocol {

    let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()

    func performRequest<T>(with apiRequest: T) async throws -> T.Response where T : APIRequest {
        let request = try endpoint(for: apiRequest)
        guard let (data, response) = try? await URLSession.shared.data(for: request),
              let response = response as? HTTPURLResponse,
              200...209 ~= response.statusCode else {
            throw NetworkError.requestError
        }

        guard let result = try? jsonDecoder.decode(T.Response.self, from: data) else {
            throw NetworkError.decodingError
        }

        return result
    }

    /// Build URLRequest
    private func endpoint<T: APIRequest>(for request: T) throws -> URLRequest {
        guard var components = URLComponents(string: Constants.baseURL+request.resourceName) else {
            throw NetworkError.badUrl
        }

        var customQueryItems: [URLQueryItem] = []

        for (key, value) in request.parameters {
            let queryItem = URLQueryItem(name: key, value: value)
            customQueryItems.append(queryItem)
        }

        components.queryItems = customQueryItems

        guard let url = components.url else {
            throw NetworkError.badUrl
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        return request
    }
}
