//
//  SplashScreenView.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import SwiftUI

struct SplashScreenView: View {
    @ObservedObject var viewModel: SplashScreenViewModel

    var body: some View {
        Theme.Images.splashLogo
            .resizable()
            .frame(width: Theme.Size.splashLogoSize.width, height: Theme.Size.splashLogoSize.height)
            .task {
                await viewModel.showNewsListScreen()
            }
    }
}

#Preview {
    SplashScreenView(viewModel: SplashScreenViewModel())
}
