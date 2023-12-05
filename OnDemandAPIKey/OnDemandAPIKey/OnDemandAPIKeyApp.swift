//
//  OnDemandAPIKeyApp.swift
//  OnDemandAPIKey
//
//  Created by abdul karim on 05/12/23.
//

import SwiftUI

@main
struct OnDemandAPIKeyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    do {
                        try await KeyConstants.loadAPIKeys()
                    } catch {
                        debugPrint(error.localizedDescription)
                    }
                }
        }
    }
}
