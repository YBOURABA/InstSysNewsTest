//
//  AppCoordinator.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation
import UIKit

// Used the Coordinator pattern with UIKit's UINavigationController to showcase how navigation is handled in real projects,
// even though NavigationStack would work just fine for this simple app.
final class AppCoordinator: Coordinator {
    private let router: RouterProtocol
    var childCoordinators = [Coordinator]()
    var finishFlow: (() -> Void)?

    init(router: RouterProtocol) {
        self.router = router
    }

    func start() {
        runSplashScreen()
    }

    // Display Splash Screen
    func runSplashScreen() {
        let coordinator = SplashScreenCoordinator(router: router)
        childCoordinators.append(coordinator)
        run(coordinator: coordinator) { [weak self] in
            self?.runNewsListScreen()
        }
    }

    // Display NewsList Screen after a delay
    func runNewsListScreen() {
        let coordinator = NewsFlowCoordinator(router: router)
        childCoordinators.append(coordinator)
        run(coordinator: coordinator) {  }
    }
}
