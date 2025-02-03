//
//  ViewState.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

enum ViewState: Equatable {
    case loading,
         failure(NetworkError),
         success
}
