//
//  NetworkError.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

enum NetworkError: Error {
    case badUrl,
         requestError,
         decodingError

    var description: String {
        switch self {
        case .badUrl: return Constants.Errors.badURL
        case .requestError: return Constants.Errors.requestError
        case .decodingError: return Constants.Errors.decodingError
        }
    }

    var recoverySuggestion: String {
        switch self {
        case .badUrl: return Constants.Errors.badURLRecoveryMsg
        case .requestError: return Constants.Errors.requestErrorRecoveryMsg
        case .decodingError: return Constants.Errors.decodingErrorRecoveryMsg
        }
    }
}
