//
//  ConnectApp.swift
//  Connect
//
//  Created by Jingying(Frieda) Huang on 2022/9/9.
//

import FirebaseCore
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        FirebaseApp.configure()

        return true
    }
}

@main
struct ConnectApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            let authViewModel = AuthenticationViewModel()
            ContentView()
                .environmentObject(authViewModel)
        }
    }
}
