//
//  Router.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation
import UIKit

protocol RouterProtocol {
    // Push ViewControllers
    func push(_ module: UIViewController)

    // Set a ViewController as a root view
    func setRootModule(_ module: UIViewController, hideBar: Bool)
}

final class Router: RouterProtocol {
    private var rootController: UINavigationController

    init(rootController: UINavigationController) {
        self.rootController = rootController
    }

    func push(_ module: UIViewController) {
        self.rootController.pushViewController(module, animated: true)
    }

    func setRootModule(_ module: UIViewController, hideBar: Bool) {
        self.rootController.setViewControllers([module], animated: false)
        self.rootController.isNavigationBarHidden = hideBar
        self.rootController.navigationBar.topItem?.backButtonDisplayMode = .minimal
    }
}
