//
//  Coordinator.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import Foundation
import UIKit

@MainActor
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var finishFlow: (() -> Void)? { get set }

    func start()
}

extension Coordinator {
    // Start coordinator and handles router callbacks
    func run(coordinator: Coordinator, finishFlow: @escaping () -> Void) {
        coordinator.finishFlow = finishFlow
        coordinator.start()
    }
}
