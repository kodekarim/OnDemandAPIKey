//
//  ContentView.swift
//  OnDemandAPIKey
//
//  Created by abdul karim on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var keys: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, keys!,\n \(keys)")
            
            Button("Show API Keys", action: {
                showKeys()
            })
        }
        .padding()
    }
    
    func showKeys() {
         keys = """
                \(KeyConstants.APIKeys.mySecretAPIKey)
                \(KeyConstants.APIKeys.mySecretAPIKey2)
                """
    }
}

#Preview {
    ContentView()
}
