//
//  testApp.swift
//  test
//
//  Created by Yusuf Can Sağlam on 1.04.2023.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct testApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var cartViewModel = CartViewModel()

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(cartViewModel)
        }
    }
}






