//
//  SplashScreenRouter.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation

protocol SplashScreenRouterOutput: AnyObject {
    func showNewsListScreen()
}

class SplashScreenRouter {
    weak var output: SplashScreenRouterOutput?

    init(output: SplashScreenRouterOutput?) {
        self.output = output
    }

    func showNewsListScreen() {
        output?.showNewsListScreen()
    }
}
