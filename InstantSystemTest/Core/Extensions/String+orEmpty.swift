//
//  String+orEmpty.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

extension Optional where Wrapped == String {
    var orEmpty: String { self ?? "" }
}
