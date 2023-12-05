//
//  Keys.swift
//  OnDemandAPIKey
//
//  Created by abdul karim on 05/12/23.
//

import Foundation

enum KeyConstants {
  static func loadAPIKeys() async throws  {
    let request = NSBundleResourceRequest(tags: ["APIKeys"])
    try await request.beginAccessingResources()

    let url = Bundle.main.url(forResource: "APIKeys", withExtension: "json")!
    let data = try Data(contentsOf: url)
    // TODO: Store in keychain and skip NSBundleResourceRequest on next launches
    APIKeys.storage = try JSONDecoder().decode([String: String].self, from: data)

    request.endAccessingResources()
  }

  enum APIKeys {
    static fileprivate(set) var storage = [String: String]()

    static var mySecretAPIKey: String { storage["MyServiceX"] ?? "" }
    static var mySecretAPIKey2: String { storage["MyServiceY"] ?? "" }
  }
}
