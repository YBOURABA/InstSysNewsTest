//
//  AppDelegate.swift
//  InstantSystemTest
//
//  Created by Yahya BOURABA on 01/02/2025.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: Coordinator?

    private let navigationController = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(router: Router(rootController: navigationController))
        appCoordinator?.start()
        navigationController.navigationBar.prefersLargeTitles = false
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.darkPurple]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.darkPurple]
        UINavigationBar.appearance().tintColor = UIColor.lightPurple
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}

