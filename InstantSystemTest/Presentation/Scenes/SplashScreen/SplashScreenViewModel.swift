//
//  SplashScreenViewModel.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

@MainActor
final class SplashScreenViewModel: ObservableObject {

    private var router: SplashScreenRouter?

    func setRouter(_ router: SplashScreenRouter) {
        self.router = router
    }

    func showNewsListScreen() async {
        try? await Task.sleep(nanoseconds: 1_000_000_000)
        router?.showNewsListScreen()
    }
}
