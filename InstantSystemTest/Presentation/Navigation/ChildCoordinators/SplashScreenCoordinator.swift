//
//  SplashScreenCoordinator.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation
import UIKit
import SwiftUI

final class SplashScreenCoordinator: Coordinator {
    private let router: RouterProtocol
    var childCoordinators = [Coordinator]()
    var finishFlow: (() -> Void)?

    init(router: RouterProtocol) {
        self.router = router
    }

    func start() {
        let viewModel = SplashScreenViewModel()
        viewModel.setRouter(SplashScreenRouter(output: self))
        let vc = UIHostingController(rootView: SplashScreenView(viewModel: viewModel))
        router.setRootModule(vc, hideBar: true)
    }
}

extension SplashScreenCoordinator: SplashScreenRouterOutput {
    func showNewsListScreen() {
        finishFlow?()
    }
}
