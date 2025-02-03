//
//  Theme.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation
import SwiftUI

/// Theme contains Images, Spacings, Sizes, CornerRadius, e.g : Fonts
enum Theme {
    enum Images {
        static let splashLogo: Image = Image("splashImg")
        static let articlePlaceholder: Image = Image("articlePlaceholder")
        static let linkImg: Image = Image(systemName: "link.circle.fill")
    }

    enum Spacing {
        static let medium: CGFloat = 10
        static let small: CGFloat = 8
    }

    enum Size {
        static let articleDetailsImageSize: CGFloat = 300
        static let splashLogoSize: CGSize = CGSize(width: 140, height: 150)
        static let navBarIconSize: CGFloat = 26
    }

    enum CornerRadius {
        static let standard: CGFloat = 10
        static let small: CGFloat = 6
    }

}
