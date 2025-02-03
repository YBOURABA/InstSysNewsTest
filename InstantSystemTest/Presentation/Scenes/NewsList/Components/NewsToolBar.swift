//
//  NewsToolBar.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 03/02/2025.
//

import SwiftUI

struct NewsToolBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: Theme.Spacing.medium) {
            Theme.Images.splashLogo
                .resizable()
                .frame(width: Theme.Size.navBarIconSize, height: Theme.Size.navBarIconSize)
            Text(Constants.news)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.darkPurple)
        }
    }
}
