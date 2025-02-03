//
//  Date+foramatted.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 02/02/2025.
//

import Foundation

extension Date {
    var detailedFormatString: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.locale = Locale(identifier: "fr")
        formatter.unitsStyle = .full
        let relativeDate = formatter.localizedString(for: self, relativeTo: Date.now)
        return relativeDate
    }
}
